# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Story.create!(title: "FML", details: "why do i have to do this")
# Story.create!(title: 'fake fire drills', details: 'they made us go up and down without purpose. just wasted our time')
# Story.create!(title: 'class on saturdays', details: 'WTF!!')

Story.all.each do |story|
  5.times do
    comment = Comment.new(
      name: Faker::TvShows::GameOfThrones.character,
      content: Faker::TvShows::GameOfThrones.quote
      )

    comment.story = story
    comment.save

  end
  
end