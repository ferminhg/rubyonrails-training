
class BalancerChecker
  def initialize traffic
    @traffic = traffic
    @traffic_len = traffic.length

    @log = true
  end

  def distributed_traffic?
    if @log
      p "Numero de combinatioras #{filter_chunk_positions.length}"
    end

    filter_chunk_positions.each {|chunks| 
      return true if same_value_chunks chunks
    }
    false
  end

  def filter_chunk_positions
    base_combination.select{ |x|
      (x[0] < x[1]) && (x[0]+1 != x[1])
    }.sort { |x, y| 
      ((@traffic_len/3) - x[0]).abs + ((@traffic_len*2 /3) - x[1]).abs <=> 
      ((@traffic_len/3) - y[0]).abs + ((@traffic_len*2 /3) - y[1]).abs
    }
  end

  def base_combination 
    ((1..@traffic_len-4).to_a).product((3..@traffic_len-2).to_a).collect
  end

  def same_value_chunks(chunks)
    c1 = @traffic[0...chunks[0]].sum 
    c2 = @traffic[chunks[0]+1...chunks[1]].sum
    c3 = @traffic[chunks[1]+1...@traffic_len].sum

    if @log 
      puts "\t chunks: #{chunks} "
      p "#{@traffic[0...chunks[0]]} : #{c1} # #{@traffic[chunks[0]+1...chunks[1]]} : #{c2} # #{@traffic[chunks[1]+1...@traffic_len]} : #{c3}"
    end
    
    c1 == c2 && c1  == c3
  end
end


def equal_traffic? traffic
  balancerChecker = BalancerChecker.new traffic
  balancerChecker.distributed_traffic?
end

p equal_traffic?([1, 1, 1, 1, 1]) == true
p equal_traffic?([1, 2, 3, 4, 5])  == false
p equal_traffic?([1, 1, 1, 1, 1, 2, 2, 2, 2, 2]) == true
# p equal_traffic?([1, 2, 3, 4, 5, 1, 2, 3, # 7
#                   4, 5, 1, 2, 3, 4, 5, 1, # 15
#                   2, 3, 4, 5, 1, 2, 3, 4, 5])  == false
