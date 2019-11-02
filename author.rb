
class Author
    attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def books
    Book.all.select { |book| book.author == self }
  end

  def write_book(title, number_words)
    Book.new(title, self, number_words)
  end

  def total_words
    number = 0
    my_books = books
    my_books.each { |book|
      number += book.number_words
    }
    number
  end

  def self.most_words
    the_most_words = 0
    author_inst = nil
    self.all.each { |author|
      if the_most_words < author.total_words
        the_most_words = author.total_words
        author_inst = author
      end
    }
    author_inst
  end

  def self.all
    @@all
  end
end
