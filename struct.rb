require 'ostruct'
person = OpenStruct.new
person.name = "Max Powel"
person.age = 54

puts person.name
puts person.age

Person = Struct.new(:name, :age)
me = Person.new("Fred Bloggs", 25)
me.age += 1

puts me.name
puts me.age

