require 'random_data'

50.times do
    Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
    )
end

posts = Post.all

100.times do
    Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
    )
end

Post.find_or_create_by(title: "This title should not repeat", body: "This body should not repeat")

#seed questions
50.times do
    Question.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    resolved: false
    )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Question.count} questions created"
