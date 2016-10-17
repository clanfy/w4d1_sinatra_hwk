require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require('json')
require_relative('./models/word_formatter')

get '/' do
  erb(:about_me)
end

get '/address' do
  content_type(:json)
  # address = Address.new()
  results = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    postcode: 'e13 zqf',
    phone: '0131558030'
  }
  return results.to_json
end

# get '/address/postcode' do
#   postcode = "e13 zqf"
# end



