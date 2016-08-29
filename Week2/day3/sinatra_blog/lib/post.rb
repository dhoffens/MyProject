# lib/post.rb
require 'date'

class Post
  attr_accessor(:title, :date, :text)

  def initialize(title, date, text)
    @title = title
    @date = date
    @text = text
  end

  def date
  	@date
  end

  def print
    @title
    @date
   	@text
  end
end