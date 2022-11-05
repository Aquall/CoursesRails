require "application_system_test_case"

class AuthorsBooksTest < ApplicationSystemTestCase
  setup do
    @authors_book = authors_books(:one)
  end

  test "visiting the index" do
    visit authors_books_url
    assert_selector "h1", text: "Authors books"
  end

  test "should create authors book" do
    visit authors_books_url
    click_on "New authors book"

    fill_in "Book", with: @authors_book.book_id
    fill_in "Genre", with: @authors_book.genre_id
    click_on "Create Authors book"

    assert_text "Authors book was successfully created"
    click_on "Back"
  end

  test "should update Authors book" do
    visit authors_book_url(@authors_book)
    click_on "Edit this authors book", match: :first

    fill_in "Book", with: @authors_book.book_id
    fill_in "Genre", with: @authors_book.genre_id
    click_on "Update Authors book"

    assert_text "Authors book was successfully updated"
    click_on "Back"
  end

  test "should destroy Authors book" do
    visit authors_book_url(@authors_book)
    click_on "Destroy this authors book", match: :first

    assert_text "Authors book was successfully destroyed"
  end
end
