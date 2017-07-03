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
        if (book_name == book[:title])
          return books
        end
      end
   end

  def rental_details(book_name)

    for book in books
     if (book_name == book[:title])
       return book[:rental_details]
     end
   end
 end

 def new_book(book_name)
  @books << {
        title: book_name,
        rental_details: {
          student_name: "",
          due_date: ""
        }
      }
 end

  def update_rental_details(book_name, new_renter, new_due_date)

    for book in books
     if (book_name == book[:title])
        book[:rental_details][:student_name] = new_renter
        book[:rental_details][:due_date] = new_due_date
     end
   end
 end

end


