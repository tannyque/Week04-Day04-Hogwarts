require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/student')
also_reload ( './models/*')



# # INDEX ROUTE
# get '/pizza-orders' do
#   @orders = PizzaOrder.all()
#   erb (:index)
# end
