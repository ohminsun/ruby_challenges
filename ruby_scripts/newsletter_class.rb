class Media
    attr_accessor :title, :author, :publisher
end

class Newsletter < Media 
    def about_newsletter
        return "#{@title} is written by #{@author} and published by #{@publisher}"
    end
end

class Blog < Media
    def about_blog
        return "#{@title} is written by #{@author} and published by #{@publisher}"
    end
end

class Dribble < Media
    def about_dribble
        return "#{@title} is created by #{@author} and published by #{@publisher}"
    end
end

my_newsletter = Newsletter.new
my_newsletter.title = "The Occasional Unicorn"
my_newsletter.author = "Lynn Mueller"
my_newsletter.publisher = "Tinyletter"

my_blog = Blog.new
my_blog.title = "WordPress DB Pro"
my_blog.author = "Lynn Mueller"
my_blog.publisher = "Delicious Brains"

my_dribble = Dribble.new
my_dribble.title = "Creative Art Profile"
my_dribble.author = "Lynn Mueller"
my_dribble.publisher = "Adobe Education Exchange"

puts my_newsletter.about_newsletter
puts my_blog.about_blog
puts my_dribble.about_dribble

puts my_newsletter.inspect
puts my_blog.inspect
puts my_dribble.inspect
