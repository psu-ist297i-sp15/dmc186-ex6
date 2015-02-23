#!/usr/bin/ruby
#

0xhex1 "Dan"
0xhex2 "Dan"
change_my_name (0xhex1)

change_my_name ("Dan")

def change_my_name(x)
  x = x + "s"
end

puts x



puts "hello world"


def some_stuff(stuff,t)
  trucks = ["F-150", "Pilot", "silverado"]
  cars = ["ford", "chevy", "nissan"]
  c = cars + [stuff]
  t = trucks 
  c
end

puts "#{t}"
some_stuff("toyota", "xyz")
puts "#{t}"

puts "These are all cars: #{t}"

puts "end"

