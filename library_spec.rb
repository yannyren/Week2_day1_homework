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


end