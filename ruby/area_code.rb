dial_book = {
  "newyork" => "212",
  "sanfrancisco" => "301",
  "orlando" => "407",
  "lancaster" => "717",
}

# get city names from the hash
def get_city_names(somehash)
  somehash.keys
end

# get area code bases on given hash and key
def check_area_code(somehash, city)
  area_code = somehash[city]
  if area_code 
    return "The area code for #{city} is #{area_code}"
  end
  "Error: Bad city"
end

loop do 
  puts "Do you want to lookup an area code based on a city name (Y/N)"
  if gets.chomp.upcase != "Y"
    break
  end

  puts get_city_names(dial_book).to_a
  puts "Enter your selection"
  puts check_area_code(dial_book, gets.chomp.downcase)
end
