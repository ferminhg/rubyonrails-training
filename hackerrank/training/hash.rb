sample_hash = { "a" => 1, "b" => 2, "c" => 3 }

my_details = { "name" => "fermin", "favsport" => "climbing" }
p my_details["name"]
p sample_hash["b"]
p my_details

#keys as symbols
another_hash = { a: 1, b: 2, c: 3 }
p another_hash
p another_hash[:a]

p sample_hash.keys
p sample_hash.values

sample_hash.each do |key, value|
  puts "the class is #{key.class} and the value #{value.class}"
end

my_details.each do |key, value|
  puts "the class is #{key.class} and the value #{value.class}"
end

another_hash.each do |key, value|
  puts "the class is #{key.class} and the value #{value.class}"
end

another_hash = { a: 1, b: 2, c: 3 }
another_hash[:e] = "fermin"
p another_hash
another_hash[:a] = "ruby"
p another_hash
another_hash.each { |key, value| puts "the class is #{key.class} and the value #{value.class}" }
p another_hash.select { |k, v| v.is_a?(String) }
p another_hash.each { |k, v| another_hash.delete(k) if v.is_a?(String) }
