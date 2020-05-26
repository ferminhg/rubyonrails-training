#Print an array of the first  palindromic primes.
# data = STDIN.read
def prime?(n)
  return false if n < 2
  (2..n/2).none?{|i| n % i == 0}
end

def palindrome?(string)
  string[0] == string[-1] && (string.length <= 2 || palindrome?(string[1..-2]))
end

def get_n_primes(n)
  2.upto(Float::INFINITY).lazy.filter{|x| x if (palindrome?(x.to_s) &&prime?(x))  }.first(n)
end
# p get_n_primes(data.to_i)
# p get_n_primes(100)

def transcode(text)
  text.force_encoding(Encoding::UTF_8)
end

def serial_average(string)
  z = ((string[4,5].to_f + string[10,5].to_f)/2).to_f.round(2)
  z = format('%<num>0.2f', num: z)
  return "#{string[0,3]}-#{z}"
end

# puts serial_average('001-12.43-56.78')


def count_multibyte_char(string)
string.each_char.count{|x| x if x.bytes.length > 1 }
end
money = "¥1000¥¥"
# p count_multibyte_char(money)


def process_text(arr)
  arr.each.map {|x| x.strip.chomp}.join(' ')
end
# p process_text(["Hi, \n", " Are you having fun?    "])

def strike(string)
  "<strike>#{string}</strike>"
end
p strike("Meow!")
p strike("Foolan Barik")

def mask_article(text, arr)
  arr.each.map { |pattern| text = text.gsub(/#{pattern}/, strike(pattern))}.last
end

p mask_article("Hello World! This is crap!", ["crap"])
p mask_article("Hello World! This is crap!", ["crap", "Hello"])
# "Hello World! This is <strike>crap</strike>!"