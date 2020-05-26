require 'time'

def timeConversion(s)
  Time.parse(s).strftime("%H:%M:%S")
end

s = "07:05:45AM"
result = timeConversion(s)
p result