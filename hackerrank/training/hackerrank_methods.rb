require 'prime'

class Object
  private

  def prime?(number)
    Prime.prime?(number)
  end
end


# puts prime? 3

def take(arr, index = 1)
  arr[index..]
end


def full_name(first, *rest)
  rest.reduce(first) { |o, x| "#{o} #{x}"}
end

# puts full_name('Harsha', 'Bhogle')

def convert_temp(temp, input_scale: , output_scale: 'celsius')
  
end

def convert_temp(temp, input_scale: , output_scale: 'celsius')
  return temp if input_scale == output_scale
  #Convert everything to Celsius
  case input_scale
  when "kelvin"
      temp = temp - 273.15
  when "fahrenheit"
      temp = (temp-32) * (5.0/9.0)
  end
  
  case output_scale
  when "celsius"
      return temp
  when "fahrenheit"
      return temp * (9.0/5.0) + 32
  when "kelvin"
      return temp + 273.15
  end
end

# puts convert_temp(0, input_scale: 'celsius', output_scale: 'kelvin')
# puts convert_temp(0, input_scale: 'celsius', output_scale: 'fahrenheit')
# puts convert_temp(0, input_scale: 'kelvin', output_scale: 'celsius')
# puts convert_temp(0, input_scale: 'kelvin', output_scale: 'fahrenheit')
# puts convert_temp(0, input_scale: 'fahrenheit', output_scale: 'celsius')
# puts convert_temp(0, input_scale: 'fahrenheit', output_scale: 'kelvin')

$hash = {   k_to_c: Proc.new { |k| k - 273.15 } ,
            f_to_c: Proc.new { |f| (f - 32) * 5.0/9.0},
            c_to_f: Proc.new { |c| c * 5.0/9.0 + 32},
            c_to_k: Proc.new { |c| c + 273.15},
            k_to_f: Proc.new { |k| k * 5.0/9.0 + 32 + 273.15},
            f_to_k: Proc.new { |f| (f - 32) * 5.0/9.0 + 273.15}
}

def convert_temp(t, input_scale: nil, output_scale: nil)
  conv_table = {
      k_to_c: -> (k) { k - 273.15 },
      f_to_c: -> (f) { (f - 32) * 5.0 / 9.0 },
      c_to_f: -> (c) { c * 5.0 / 9.0 + 32 },
      c_to_k: -> (c) { c + 273.15 },
      k_to_f: -> (k) { k * 5.0 / 9.0 + 32 + 273.15 },
      f_to_k: -> (f) { (f - 32) * 5.0 / 9.0 + 273.15 }
   }
  
  key = ("%s_to_%s" % [input_scale[0], output_scale[0]]).to_sym
  conv_table.has_key?(key) ? conv_table[key].call(t) : t
end


combination = -> (n) do
  -> (r) do
     def fact(n) (1..n).inject(1) {|r,i| r*i }end
     fact(n) / (fact(r) * fact(n-r))
  end
end

n = 10
r = 3
nCr = combination.(n)
puts nCr.(r)