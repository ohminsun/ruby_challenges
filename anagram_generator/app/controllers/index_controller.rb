require "sinatra"
set :bind, '0.0.0.0'

get '/'
    erb: index
end

get '/anagrams/:word' do
  @word = params[:word]
  @anagrams = Word.find_anagrams(@word)
  erb :show
end

post '/' do
  @word = params[:word]
  redirect "/anagrams/#{@word}"
end