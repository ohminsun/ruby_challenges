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

