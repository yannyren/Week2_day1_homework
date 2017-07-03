class Library

  attr_reader(:books)

   def initialize(books)
     @books = books
   end

   def details
    return @books
   end

   def book_detail(book_name)
      
      for book in books
        if (book_name == :title)
          return book
        end
    end
   end
end