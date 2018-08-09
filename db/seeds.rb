require_relative('../models/student')
require_relative('../models/house')
require 'pry'
Student.delete_all()
House.delete_all()

house1 = House.new({'name' => 'Gryffindor'})
house2 = House.new({'name' => 'Ravenclaw'})
house3 = House.new({'name' => 'Hufflepuff'})
house4 = House.new({'name' => 'Slytherin'})

house1.save()
house2.save()
house3.save()
house4.save()


student1 = Student.new({
  'first_name' => 'Harry',
  'second_name' => 'Potter',
  'house_id' => house1.id,
  'age' => 11
  })
student1.save()

student2 = Student.new({
  'first_name' => 'Ron',
  'second_name' => 'Weasley',
  'house_id' => house1.id,
  'age' => 11
  })
student2.save()

student3 = Student.new({
  'first_name' => 'Hermione',
  'second_name' => 'Granger',
  'house_id' => house1.id,
  'age' => 11})
student3.save()

student4 = Student.new({
  'first_name' => 'Cho',
  'second_name' => 'Chang',
  'house_id' => house2.id,
  'age' => 12})
student4.save()

student5 = Student.new({
  'first_name' => 'Terry',
  'second_name' => 'Boot',
  'house_id' => house2.id,
  'age' => 11
  })
student5.save()

student6 = Student.new({
  'first_name' => 'Cedric',
  'second_name' => 'Diggory',
  'house_id' => house3.id,
  'age' => 14
  })
student6.save()

student7 = Student.new({
  'first_name' => 'Hannah',
  'second_name' => 'Abbot',
  'house_id' => house3.id,
  'age' => 11
  })
student7.save()

student8 = Student.new({
  'first_name' => 'Draco',
  'second_name' => 'Malfoy',
  'house_id' => house4.id,
  'age' => 11
  })
student8.save()

student9 = Student.new({
  'first_name' => 'Pansy',
  'second_name' => 'Parkinson',
  'house_id' => house4.id,
  'age' => 11
  })
student9.save()
