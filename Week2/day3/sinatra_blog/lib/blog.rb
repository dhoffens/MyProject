class Blog
  def initialize
    @posts = []
  end

  def add_post(post)
    @posts.push(post)
  end

  def print_posts
    @posts.sort { |a,b| b.date <=> a.date}
  end
end