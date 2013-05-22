Fabricator(:combo) do
  name        Faker::Name.title
  description Faker::Lorem.sentence
  user_id     1
end
