
class Post
  attr_accessor :title
  attr_reader :author
  @@all = []

  def initialize(title)
    @title = title
    @author = nil
    @@all <<self
  end

  def self.all
    @@all
  end

  def author=(author)
    @author = author
  end

  def author_name
    author && author.name
  end
end
