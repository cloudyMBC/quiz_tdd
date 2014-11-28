
data = ["duana", "brigitte", "carol", "bla", "bia"]

#transformed_data = data.map{|name| name.upcase }

transformed_data = []

michelle_found = false

index = 0
while michelle_found == false && index != data.length
  puts index
  if data[index] == "michelle"
    michelle_found = true
  else
    michelle_found = false
  end
  index+=1
end

puts "Did we find michelle?  #{michelle_found}"