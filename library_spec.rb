require('minitest/autorun')
require_relative('./library.rb')


class LibraryTest < MiniTest::Test

  def test_all_book_details
    fantasy_section = Library.new(
      [{
        title: "lord of the rings",
        rental_details: {
          student_name: "Jeff",
          due_date: "01/12/16"
        }
      }
      ])
  assert_equal([{
        title: "lord of the rings",
        rental_details: {
          student_name: "Jeff",
          due_date: "01/12/16"
        }}], fantasy_section.details)
  end

  def test_book_detail
    fantasy_section = Library.new(
      [{
        title: "lord of the rings",
        rental_details: {
          student_name: "Jeff",
          due_date: "01/12/16"
        }
      }
      ])
  assert_equal([{
        title: "lord of the rings",
        rental_details: {
          student_name: "Jeff",
          due_date: "01/12/16"
        }}], fantasy_section.book_detail("lord of the rings"))
  end

  def test_rental_details
    fantasy_section = Library.new(
      [{
        title: "lord of the rings",
        rental_details: {
          student_name: "Jeff",
          due_date: "01/12/16"
        }
      }
      ])
  assert_equal({
          student_name: "Jeff",
          due_date: "01/12/16"
        }, fantasy_section.rental_details("lord of the rings"))
  end


  def test_new_book
    fantasy_section = Library.new(
      [{
        title: "lord of the rings",
        rental_details: {
          student_name: "Jeff",
          due_date: "01/12/16"
        }
      }
      ])
  assert_equal([{
        title: "lord of the rings",
        rental_details: {
          student_name: "Jeff",
          due_date: "01/12/16"
        }
      },
        {
        title: "The Hobbit",
        rental_details: {
          student_name: "",
          due_date: ""
        }
      }
      ], fantasy_section.new_book("The Hobbit") )
  end

  def test_update_rental_details
    fantasy_section = Library.new(
      [{
        title: "lord of the rings",
        rental_details: {
          student_name: "Jeff",
          due_date: "01/12/16"
        }
      }
      ])
  assert_equal([{
        title: "lord of the rings",
        rental_details: {
          student_name: "Guy",
          due_date: "01/08/17"
        }}], fantasy_section.update_rental_details("lord of the rings", "Guy", "01/08/17"))
  end

end