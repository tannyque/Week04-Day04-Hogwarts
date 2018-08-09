require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/student')
also_reload ( './models/*')

Student.delete_all()

student1 = Student.new({'first_name' => 'Harry', 'second_name' => 'Potter', 'house' => 'Gryffindor', 'age' => 11})
student1.save()
student2 = Student.new({'first_name' => 'Ron', 'second_name' => 'Weasley', 'house' => 'Gryffindor', 'age' => 11})
student2.save()
student3 = Student.new({'first_name' => 'Hermione', 'second_name' => 'Granger', 'house' => 'Gryffindor', 'age' => 11})
student3.save()
student4 = Student.new({'first_name' => 'Cho', 'second_name' => 'Chang', 'house' => 'Ravenclaw', 'age' => 12})
student4.save()
student5 = Student.new({'first_name' => 'Terry', 'second_name' => 'Boot', 'house' => 'Ravenclaw', 'age' => 11})
student5.save()
student6 = Student.new({'first_name' => 'Cedric', 'second_name' => 'Diggory', 'house' => 'Hufflepuff', 'age' => 14})
student6.save()
student7 = Student.new({'first_name' => 'Hannah', 'second_name' => 'Abbot', 'house' => 'Hufflepuff', 'age' => 11})
student7.save()
student8 = Student.new({'first_name' => 'Draco', 'second_name' => 'Malfoy', 'house' => 'Slytherin', 'age' => 11})
student8.save()
student9 = Student.new({'first_name' => 'Pansy', 'second_name' => 'Parkinson', 'house' => 'Slytherin', 'age' => 11})
student9.save()
# student1 = Student.new(first_name => 'Ron', second_name => 'Potter', house => 'Gryffindor', age => 11)

# Console testing
# student1.first_name = "James"
# student1.update()

binding.pry
nil
