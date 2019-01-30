require 'rails_helper'

# [] Visiting the `/restaurants` path should contain a list of restaurants.
# [] Visiting the `/restaurants/10` path should show the restaurant details for a restaurant with the ID of 10.
# [] Visiting the root path should display a list of all restaurants.

feature "visitor sees a list of books" do
  scenario "sees a list of books and link for new book" do
    harry_potter = Book.create(
      name:"Harry Potter",
      author:"J.K Rowling",
      isbn:"1234567561230",
      description:"All three of them demonstrate Loyalty and Bravery. Hermione Granger's unique traits are being logical, close-minded, blunt, and book smart. Harry Potter's unique traits are Arrogant, instinctive, obsessive (Hermione is too I suppose), and intimidating (Hermione, again is too, but in a different way.).",
      publication_date: "Jan-01-2001");
    lord_of_the_rings = Book.create(
      name:"Lord of the Rings",
      author:"J.K Rowling",
      isbn:"1234567431063",
      description:"All three of them demonstrate Loyalty and Bravery. Hermione Granger's unique traits are being logical, close-minded, blunt, and book smart. Harry Potter's unique traits are Arrogant, instinctive, obsessive (Hermione is too I suppose), and intimidating (Hermione, again is too, but in a different way.).",
      publication_date: "Jan-01-2001");
    game_of_thrones = Book.create(
      name:"Game of Thrones",
      author:"J.K Rowling",
      isbn:"0123456741052",
      description:"All three of them demonstrate Loyalty and Bravery. Hermione Granger's unique traits are being logical, close-minded, blunt, and book smart. Harry Potter's unique traits are Arrogant, instinctive, obsessive (Hermione is too I suppose), and intimidating (Hermione, again is too, but in a different way.).",
      publication_date: "Jan-01-2001");

    visit root_path

    expect(page).to have_content "All Books"
    expect(page).to have_content harry_potter.name
    expect(page).to have_content lord_of_the_rings.name
    expect(page).to have_content game_of_thrones.name
    expect(page).to have_link harry_potter.name
    expect(page).to have_link lord_of_the_rings.name
    expect(page).to have_link game_of_thrones.name
    expect(page).to have_link "Add New Book"
  end
end
