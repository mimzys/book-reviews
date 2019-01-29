require 'spec_helper'

describe Review do
  harry_potter = Book.create(
    name:"Harry Potter",
    author:"J.K Rowling",
    isbn:"01234567",
    description:"All three of them demonstrate Loyalty and Bravery. Hermione Granger's unique traits are being logical, close-minded, blunt, and book smart. Harry Potter's unique traits are Arrogant, instinctive, obsessive (Hermione is too I suppose), and intimidating (Hermione, again is too, but in a different way.).",
    publication_date: "Jan-01-2001");

  it { should have_valid(:rating).when(1, 3, 5) }
  it { should_not have_valid(:rating).when(nil, "", 7, -1, 0) }

  it { should have_valid(:comment).when("J.K Rowling", "", nil, 1) }

  it { should have_valid(:likes).when(0, 6) }
  it { should_not have_valid(:likes).when(nil, "", -1) }

  it { should have_valid(:dislikes).when(0, 6) }
  it { should_not have_valid(:dislikes).when(nil, "", -1) }

  it { should have_valid(:book_id).when(harry_potter.id) }
  it { should_not have_valid(:book_id).when(nil, "") }
end
