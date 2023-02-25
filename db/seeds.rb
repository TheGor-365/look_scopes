10.times do |_i|
  Post.create(
    title: Faker::Lorem.sentence(word_count: 3),
    body: Faker::Lorem.paragraph(sentence_count: 10),
    views: rand(1000)
  )
end