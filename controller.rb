require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/student')
require_relative('./models/house')
also_reload ( './models/*')

#INDEX ROUTE
get '/hogwarts' do
  @students = Student.all()
  erb (:index)
end

#NEW PEEP
get '/hogwarts/new' do
  erb (:new)
end

#Create
post '/hogwarts' do
  @student = Student.new(params)
  @student.save()
  erb (:create)
end

binding.pry
nil
