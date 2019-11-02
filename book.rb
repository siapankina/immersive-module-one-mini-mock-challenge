
class Book
  attr_reader :title, :number_words
  @@all = []

  def initialize(title, author, number_words)
    @title = title
    @author = author
    @number_words = number_words
    @@all << self
  end

  def author
    @author
  end

  def title
    @title
  end

  def self.all
    @@all
  end

  def word_count
    @number_words
  end
end
