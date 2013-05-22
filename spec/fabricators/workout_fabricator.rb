Fabricator(:workout) do
  title       Faker::Name.title
  description Faker::Lorem.sentence
  image       Faker::Internet.url
  video       Faker::Internet.url
  body_type   'abs'
end
