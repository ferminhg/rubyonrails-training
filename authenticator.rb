users = [
  { username: "fermin", password: "1234" },
  { username: "lucia", password: "5678" },
  { username: "muka", password: "abcd" },
]

def ask_credentials
  print "Username: "
  user_name = gets.chomp
  print "Password: "
  password = gets.chomp
  user_to_compare = { username: user_name, password: password }
end

def ask_continue
  print "Press n to quit or any other key to continue: "
  key = gets.chomp.downcase
  key == "n"
end

def check_credentials(credential, users)
  if users.include?(credential)
    return credential
  end
  "Credentials were not correct"
end

puts "Welcomen to the authenticator"
30.times { print "-" }
puts
puts "We are going to validate the user and plain password"

attemps = 0
max_attemps = 3
while attemps < max_attemps
  credential = ask_credentials()
  attemps += 1
  puts check_credentials(credential, users)
  break if ask_continue
  puts
end

if attemps == max_attemps
  puts "You have exceeded the number of attemps"
end
