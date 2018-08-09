require_relative('../db/sql_runner')

class Student

  attr_reader :id
  attr_accessor :first_name,

   :second_name, :house, :age

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @first_name = options['first_name']
    @second_name = options['second_name']
    @house = options['house']
    @age = options['age']
  end

  def save()
    sql = 'INSERT INTO students
    (first_name, second_name, house, age) VALUES ($1, $2, $3, $4) RETURNING id'
    values = [@first_name, @second_name, @house, @age]
    student_data = SqlRunner.run(sql, values).first()
    @id = student_data['id'].to_i()
  end

  def self.delete_all()
    sql = 'DELETE FROM students'
    SqlRunner.run(sql)
  end

  def update()
    sql = "UPDATE students SET (first_name, second_name, house, age) = ($1, $2, $3, $4) WHERE id = $5"
    values = [@first_name, @second_name, @house, @age, @id]
    SqlRunner.run(sql, values)
  end

  def self.find_all()
    sql = 'SELECT * FROM students'
    students = SqlRunner.run(sql)
    students.map { |student| Student.new(student)}
  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    students_hash = results.first
    student = Student.new(students_hash)
    return student
  end

end
