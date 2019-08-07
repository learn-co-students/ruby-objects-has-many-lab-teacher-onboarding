class Author
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select do |post|
            post.author == self
        end
    end

    def add_post(new_post)
        new_post.author = self
    end

    def add_post_by_title(new_title)
        new_post = Post.new(new_title)
        add_post(new_post)
    end

    def self.post_count
        Post.all.count
    end
end