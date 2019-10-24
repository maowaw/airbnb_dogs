require 'faker'

#Ces 3 lignes pour ne pas se retrouver avec 1000 données, permet de supprimer les données précédentes à chaques qu'on $rails db:seed
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all

20.times do

	#city n'a pas besoin des autres, donc en premier
	City.create!(city_name: Faker::Nation.capital_city)

end


50.times do

	Dog.create!(name: Faker::Games::Pokemon.name, city: City.all.sample)
	Dogsitter.create!(name: Faker::Movies::BackToTheFuture.character, city: City.all.sample)

end


100.times do 

  Stroll.create!(dog: Dog.all.sample, dogsitter: Dogsitter.all.sample, date: Faker::Date.in_date_period.to_datetime, city: City.all.sample)

end