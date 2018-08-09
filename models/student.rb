require_relative('../db/sql_runner')

class Student

  attr_accessor :id, :first_name, :second_name, :house_id, :age

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @first_name = options['first_name']
    @second_name = options['second_name']
    @house_id = options['house_id']
    @age = options['age']
  end

  def save()
    sql = 'INSERT INTO students
    (first_name, second_name, house_id, age) VALUES ($1, $2, $3, $4) RETURNING id'
    values = [@first_name, @second_name, @house_id, @age]
    student_data = SqlRunner.run(sql, values).first()
    @id = student_data['id'].to_i()
  end

  def self.delete_all()
    sql = 'DELETE FROM students'
    SqlRunner.run(sql)
  end

  def update()
    sql = "UPDATE students SET (first_name, second_name, house_id, age) = ($1, $2, $3, $4) WHERE id = $5"
    values = [@first_name, @second_name, @house_id, @age, @id]
    SqlRunner.run(sql, values)
  end

  def self.all()
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

  def house()
    sql = "SELECT houses.* FROM houses INNER JOIN students ON houses.id = students.house_id WHERE students.id = $1"
    values = [@id]
    houses = SqlRunner.run(sql, values)
    return houses.map { |house| House.new(house)}
  end
end
