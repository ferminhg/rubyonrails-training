class Color
  include Enumerable

end

def iterate_colors(colors)
  values = []
  colors.each{|v| values.push(v) }
  values
end


def skip_animals(animals, skip)
  # values = []
  # animals.each_with_index { |item, index| values.push("#{index}:#{item}") if index >= skip}
  # values
  animals.map.with_index{|a, index| "#{index}:#{a}" if index >= skip}.compact
end

puts skip_animals(['leopard', 'bear', 'fox', 'wolf'], 2)

