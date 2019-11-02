require 'pry'
require 'pry-nav'
require_relative './book'
require_relative './author'

aut1= Author.new("J.K")
aut2= Author.new("R.M")
book1= Book.new("Harry1", aut1, 3000)
book1= Book.new("Harry2", aut1, 700)
book1= Book.new("Harry3", aut1, 1500)
book2 = Book.new("Love", aut2, 2500)
book2 = Book.new("Love2", aut2, 4000)


# puts book1.author.name
# puts book2.title
# puts book1.word_counte
# aut1.books.each {|book| puts book.title}
# puts "Printing books written by aut2"
# aut2.books.each {|book| puts book.title}
# puts "Adding book to aut2"
# aut2.write_book("life", 800)
# puts "Printing books written by aut2"
# aut2.books.each {|book| puts book.title}

puts "checking total words written by aut1"
puts aut1.total_words
puts "checking most words "
puts Author.most_words.name




# binding.pry


