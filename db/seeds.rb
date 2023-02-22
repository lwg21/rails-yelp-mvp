puts 'Destroying all restaurants…'
Restaurant.destroy_all

puts "The database contains #{Restaurant.count} restaurants and #{Review.count} reviews."

puts 'Creating restaurants…'

bocuse = Restaurant.new(
  name: "Restaurant Paul Bocuse",
  address: "Lyon",
  phone_number: "+33000000000",
  category: "french"
)
bocuse.save

auberge = Restaurant.new(
  name: "Auberge de l'Ill",
  address: "Illhaeusern",
  phone_number: "+33000000000",
  category: "french"
)
auberge.save

osteria = Restaurant.new(
  name: "Osteria Francescana",
  address: "Modena",
  phone_number: "+39000000000",
  category: "italian"
)
osteria.save

muku = Restaurant.new(
  name: "Muku",
  address: "Frankfurt",
  phone_number: "+49000000000",
  category: "japanese"
)
muku.save

liu = Restaurant.new(
  name: "LIU",
  address: "Berlin",
  phone_number: "+49000000000",
  category: "chinese"
)
liu.save

puts "Created #{Restaurant.count} restaurants"

puts 'Creating reviews…'

50.times do
  review = Review.new(
    content: %w[great bof lacking disappointed fantastic yuk awesome delicious fun lovit neveragain].sample,
    rating: (0..5).to_a.sample,
    restaurant: [bocuse, auberge, osteria, muku, liu].sample
  )
  review.save
end

puts "Created #{Review.count} reviews"

puts "The database contains #{Restaurant.count} restaurants and #{Review.count} reviews."
