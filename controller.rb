require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require('json')
require_relative('./models/hwk')

get '/' do
  erb(:about_me)
end

get '/address' do
  content_type(:json)
  results = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    postcode: 'e13 zqf',
    phone: '0131558030'
  }
  return results.to_json
end