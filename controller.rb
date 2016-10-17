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
  address = Word.new(params[:word])
  results = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    postcode: word.make_upcase(postcode),
    phone: '0131558030'
  }
  return results.to_json
end