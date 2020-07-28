require 'faker'

100.times do 
  movie = Movie.create!(name: Faker::Movie.title,
    year: Faker::Number.between(from: 1900, to: 2020),
    genre: ["action", "horreur", "comédie", "drame"].sample,
    synopsis: Faker::Lorem.sentence(word_count: 10, supplemental: true, random_words_to_add: 10),
    director: Faker::Name.name,
    allocine_rating: rand(0.0...5.0).round(1),
    my_rating: nil,
    already_seen: false)
end