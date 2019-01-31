# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

books = [
  {
    name:"Harry Potter",
    author:"J.K Rowling",
    isbn: "1234567050",
    description:"All three of them demonstrate Loyalty and Bravery. Hermione Granger's unique traits are being logical, close-minded, blunt, and book smart. Harry Potter's unique traits are Arrogant, instinctive, obsessive (Hermione is too I suppose), and intimidating (Hermione, again is too, but in a different way.).",
    publication_date: "Jan-01-2001"
  },
  {
    name:"Lord of the Rings",
    author:"J.K Rowling",
    isbn: "1023456700",
    description:"All three of them demonstrate Loyalty and Bravery. Hermione Granger's unique traits are being logical, close-minded, blunt, and book smart. Harry Potter's unique traits are Arrogant, instinctive, obsessive (Hermione is too I suppose), and intimidating (Hermione, again is too, but in a different way.).",
    publication_date: "Jan-01-2001"
  },
  {
    name:"Game of Thrones",
    author:"J.K Rowling",
    isbn: "1236456700",
    description:"All three of them demonstrate Loyalty and Bravery. Hermione Granger's unique traits are being logical, close-minded, blunt, and book smart. Harry Potter's unique traits are Arrogant, instinctive, obsessive (Hermione is too I suppose), and intimidating (Hermione, again is too, but in a different way.).",
    publication_date: "Jan-01-2001"
  },
  {
    name:"To kill a Mocking Bird",
    author:"Harper Lee",
    isbn: "3765373474",
    description: "The story is told by the little six-year-old girl Jean Louise Finch nicknamed Scout. She is a rebellious girl who has tomboy tendencies. The storyline is based in Maycomb, a small town in Alabama in the 1930s where Scout lives with her elder brother Jem, and her father, Atticus, who is widowed.",
    publication_date: "May-01-1960"
  },
  {
    name:"The great Gatsby",
    author: "The great Gatsby",
    isbn: "6578986545",
    description:"The Great Gatsby is told entirely through Nick's eyes; his thoughts and perceptions shape and color the story. Read an in-depth analysis of Nick Carraway. Jay Gatsby - The title character and protagonist of the novel, Gatsby is a fabulously wealthy young man living in a Gothic mansion in West Egg.",
    publication_date: "April-01-1925"
  },
  {
    name:"Catch-22",
    author: "Joseph Heller",
    isbn: "2345678900",
    description: "Catch-22 Summary. Captain John Yossarian, a World War II bombardier, is stationed on the island of Pianosa. He is an individualist who seeks to protect his own life by fleeing to the hospital, since a “catch-22” in the Air Force regulations prevents him from being grounded for illness or obtaining a leave.",
    publication_date: "Nov-01-1961"
  },
  {
    name:"To kill a Mocking Bird",
    author:"Harper Lee",
    isbn: "3765373674",
    description: "The story is told by the little six-year-old girl Jean Louise Finch nicknamed Scout. She is a rebellious girl who has tomboy tendencies. The storyline is based in Maycomb, a small town in Alabama in the 1930s where Scout lives with her elder brother Jem, and her father, Atticus, who is widowed.",
    publication_date: "May-01-1960"
  },
  {
    name: "War and Peace",
    author: "Leo Tolstoy",
    isbn: "1234567800",
    description: "War and Peace broadly focuses on Napoleon's invasion of Russia in 1812 and follows three of the most well-known characters in literature: Pierre Bezukhov, the illegitimate son of a count who is fighting for his inheritance and yearning for spiritual fulfillment; Prince Andrei Bolkonsky, who leaves his family behind",
    publication_date: "June-01-1865"
  },
  {
    name:"On the Road",
    author: "Joseph Heller",
    isbn: "2345678900000",
    description: "Catch-22 Summary. Captain John Yossarian, a World War II bombardier, is stationed on the island of Pianosa. He is an individualist who seeks to protect his own life by fleeing to the hospital, since a “catch-22” in the Air Force regulations prevents him from being grounded for illness or obtaining a leave.",
    publication_date: "Nov-01-1961"
  },
  {
    name:"Pride and Prejudice",
    author: "Joseph Heller",
    isbn: "2385678900",
    description: "Catch-22 Summary. Captain John Yossarian, a World War II bombardier, is stationed on the island of Pianosa. He is an individualist who seeks to protect his own life by fleeing to the hospital, since a “catch-22” in the Air Force regulations prevents him from being grounded for illness or obtaining a leave.",
    publication_date: "Nov-01-1961"
  },
  {
    name:"The Road",
    author: "Joseph Heller",
    isbn: "2345608900",
    description: "Catch-22 Summary. Captain John Yossarian, a World War II bombardier, is stationed on the island of Pianosa. He is an individualist who seeks to protect his own life by fleeing to the hospital, since a “catch-22” in the Air Force regulations prevents him from being grounded for illness or obtaining a leave.",
    publication_date: "Nov-01-1961"
  },
  {
    name:"Great Expectations",
    author: "Joseph Heller",
    isbn: "2345675900",
    description: "Catch-22 Summary. Captain John Yossarian, a World War II bombardier, is stationed on the island of Pianosa. He is an individualist who seeks to protect his own life by fleeing to the hospital, since a “catch-22” in the Air Force regulations prevents him from being grounded for illness or obtaining a leave.",
    publication_date: "Nov-01-1961"
  },
  {
    name:"Of mice and men",
    author: "Joseph Heller",
    isbn: "8345678900",
    description: "Catch-22 Summary. Captain John Yossarian, a World War II bombardier, is stationed on the island of Pianosa. He is an individualist who seeks to protect his own life by fleeing to the hospital, since a “catch-22” in the Air Force regulations prevents him from being grounded for illness or obtaining a leave.",
    publication_date: "Nov-01-1961"
  },
  {
    name:"Ulysses",
    author: "Joseph Heller",
    isbn: "2315678900",
    description: "Catch-22 Summary. Captain John Yossarian, a World War II bombardier, is stationed on the island of Pianosa. He is an individualist who seeks to protect his own life by fleeing to the hospital, since a “catch-22” in the Air Force regulations prevents him from being grounded for illness or obtaining a leave.",
    publication_date: "Nov-01-1961"
  },
  {
    name:"Tell me a Riddle",
    author: "Joseph Heller",
    isbn: "2345678908000",
    description: "Catch-22 Summary. Captain John Yossarian, a World War II bombardier, is stationed on the island of Pianosa. He is an individualist who seeks to protect his own life by fleeing to the hospital, since a “catch-22” in the Air Force regulations prevents him from being grounded for illness or obtaining a leave.",
    publication_date: "Nov-01-1961"
  },
  {
    name:"The Kite Runner",
    author: "Joseph Heller",
    isbn: "2345678999",
    description: "Catch-22 Summary. Captain John Yossarian, a World War II bombardier, is stationed on the island of Pianosa. He is an individualist who seeks to protect his own life by fleeing to the hospital, since a “catch-22” in the Air Force regulations prevents him from being grounded for illness or obtaining a leave.",
    publication_date: "Nov-01-1961"
  },
  {
    name:"The little Prince",
    author: "Joseph Heller",
    isbn: "2345678944",
    description: "Catch-22 Summary. Captain John Yossarian, a World War II bombardier, is stationed on the island of Pianosa. He is an individualist who seeks to protect his own life by fleeing to the hospital, since a “catch-22” in the Air Force regulations prevents him from being grounded for illness or obtaining a leave.",
    publication_date: "Nov-01-1961"
  },
  {
    name:"The Color Purple",
    author: "Joseph Heller",
    isbn: "6666666668",
    description: "Catch-22 Summary. Captain John Yossarian, a World War II bombardier, is stationed on the island of Pianosa. He is an individualist who seeks to protect his own life by fleeing to the hospital, since a “catch-22” in the Air Force regulations prevents him from being grounded for illness or obtaining a leave.",
    publication_date: "Nov-01-1961"
  },
  {
    name:"Native Son",
    author: "Joseph Heller",
    isbn: "9999999998",
    description: "Catch-22 Summary. Captain John Yossarian, a World War II bombardier, is stationed on the island of Pianosa. He is an individualist who seeks to protect his own life by fleeing to the hospital, since a “catch-22” in the Air Force regulations prevents him from being grounded for illness or obtaining a leave.",
    publication_date: "Nov-01-1961"
  },
  {
    name:"Don Quixote",
    author: "Joseph Heller",
    isbn: "77777777777",
    description: "Catch-22 Summary. Captain John Yossarian, a World War II bombardier, is stationed on the island of Pianosa. He is an individualist who seeks to protect his own life by fleeing to the hospital, since a “catch-22” in the Air Force regulations prevents him from being grounded for illness or obtaining a leave.",
    publication_date: "Nov-01-1961"
  }
]

books.each do |book|
  Book.create!(
    name: book[:name],
    author: book[:author],
    isbn: book[:isbn],
    description: book[:description],
    publication_date: book[:publication_date]
  )
end

admin_user = User.create!(
  first_name: "Admin",
  last_name: "User",
  email: "admin@user.com",
  role: "admin",
  password: "adminuser"
)

reviews = [
  {
    book_id: Book.first.id,
    rating: 4,
    comment: "not bad at all",
    user_id: admin_user.id
  },
  {
    book_id: Book.first.id,
    rating: 3,
    comment: "best book everrrrrrrrr",
    user_id: admin_user.id
  },
  {
    book_id: Book.first.id,
    rating: 4,
    comment: "i likey",
    user_id: admin_user.id
  },
  {
    book_id: Book.second.id,
    rating: 5,
    comment: "eyyyyyyyyyy",
    user_id: admin_user.id
  },
  {
    book_id: Book.second.id,
    rating: 4,
    comment: "BEST",
    user_id: admin_user.id
  }
]

reviews.each do |review|
  Review.create!(
    book_id: review[:book_id],
    rating: review[:rating],
    comment: review[:comment],
    user_id: review[:user_id]
  )
end
