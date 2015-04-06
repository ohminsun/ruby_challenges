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
    @word = Word.new.each do
    erb :"/words/new"
  end

post '/words' do
    word = Word.create(text: params[:text])
    redirect "/words/#{word.id}"
  end

get '/words/:id/edit' do
    @word = params[:word]
    Word.all.each.find
    erb :"/words/edit"
  end
 
put '/words/:id' do
    @word = params[:word]
    @word.text = params[:text]
    @word.save
    erb :"/words/show"
  end