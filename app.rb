require('sinatra')
require('sinatra/reloader')
require('./lib/far')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end


get('/result') do
  @string = params.fetch('string_input')
  @target = params.fetch('target')
  @replacement = params.fetch('replacement')
  @result = @string.far(@target, @replacement)

  erb(:result)
end
