require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require('json')
require_relative('./models/hwk')

get '/' do
  erb(:about_me)
end