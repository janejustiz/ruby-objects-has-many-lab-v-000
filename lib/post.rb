class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
  end

  def self.post_count

  end
end


class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @@all << self
    @title = title
  end

  def self.all
    @@all
  end

  def author_name
    self.author.name
  end

end
