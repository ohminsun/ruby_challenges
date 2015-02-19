class Blog
    attr_accessor :title, :all_blog_posts, :total_blog_posts
    
    def initialize
        @created_at = Time.now
        puts "Name your blog"
        @title = gets.chomp
        @all_blog_posts = []
        @total_blog_posts = 0
    end
    
    def create_blog_post
        new_blog_post = Blog_Post.new
        puts "This is my new blog post"
        @all_blog_posts << new_blog_post
        @total_blog_posts += 1
    end
    
    def collect_blog_posts
        return @all_blog_posts
    end
    
    def publish(all_blog_posts)
        all_blog_posts.each do |blog_post|
            puts blog_post.title
            puts blog_post.created_at
            puts blog_post.content
        end
    end
end

class Blog_Post < Blog
    attr_accessor :title, :created_at, :content
    
    def initialize
        @created_at = Time.now
        puts "Name your blog post"
        @title = gets.chomp
        puts "Write your blog content here"
        @content = gets.chomp
    end
    
    def edit_blog_content
        puts "New blog title"
        @title = gets.chomp
        puts "Write your new blog content here"
        @content = gets.chomp
    end
end

my_blog = Blog.new
first_blog_post = my_blog.create_blog_post
all_blog_posts = my_blog.collect_blog_posts

puts my_blog.inspect
my_blog.publish(all_blog_posts)

            
    