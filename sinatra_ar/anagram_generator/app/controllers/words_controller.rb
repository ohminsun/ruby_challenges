get '/words' do
    @word = params[:word]
    Word.all.each do |word| 
    erb :"/words/index"
  end
    
get '/words/:id' do
     @word = params[:word]
     Word.all.each.find
     erb :"/words/show"
    end
    
    
get '/words/new' do
    erb :"/words/new"
  end

post '/words' do
    word = Word.create(text: params[:text])
    redirect "/words/#{word.id}"
  end