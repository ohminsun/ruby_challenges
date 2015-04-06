module ApplicationHelper
    def anagram_form_method(word)
        if word.new_record?
            @method = "post"
        else
            @method = "put"
        end
        @method
    end
end

def words_form_action(word)
    if word.new_record?
      @action = "post"
    else
      @action = "put"  
    end
    @action
  end
  
  def words_form_method(word)
      words_form_method = do 
    @method
  end
  
  def words_form_class(word)
      word_form_class = do
    @class
  end
  
  def words_form_id(word)
    if word.new_record?
        @form_id = Array.new
    else
      @form_id = Array
    end
    @form_id
  end

