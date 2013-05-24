Fabricator(:user) do
  email {Faker::Internet.email}
	password {Faker::Lorem.word}
end
