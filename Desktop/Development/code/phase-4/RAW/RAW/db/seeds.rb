seeds.destroy_all
puts "DESTROYED"

puts "🚗 Seeding Owners...."
owner1 = Owner.create(first_name: 'William', rating: 5)
owner2 = Owner.create(first_name: 'Jasmin', rating: 4)
owner3 = Owner.create(first_name: 'Chris', rating: 4)
owner4 = Owner.create(first_name: 'Preston', rating: 3)
owner5 = Owner.create(first_name: 'Brendan', rating: 3)


puts "🚙🚕 Seeding Rental Cars...."
car1 = Rental_car.create(owner_id: owner1.id, renter_id: renter1.id, make:'Subaru', model: 'WRX', year: 2011, type:'5dr Hatchback', rating: 4, color: 'blue', picture: 'shorturl.at/dGJW5', description: 'Small hatch that is quick with awd. No problems merging onto the highway or driving in the snow.', transmission: 'Manual', engine_type: 'Gas', price: 63, mileage: 103,211 )

car2 = Rental_car.create(owner_id: owner2.id, renter_id: renter2.id, make:'Porsche', model: '964', year: 2011, type:'2dr Coupe', rating: 5, color: 'black', picture: 'shorturl.at/cdAQS', description: 'Classic porsche. Not much else needs to be said.', transmission: 'Manual', engine_type: 'Gas', price: 256, mileage: 86,333)

car3 = Rental_car.create(owner_id: owner3.id, renter_id: renter3.id, make:'Tesla', model: 'Model S', year: 2020, type:'4dr Sedan', rating: 4, color: 'red', picture: 'shorturl.at/afLQY', description: 'Great car for the environment. Charging stations are plentiful and fits a family of 5.', transmission: 'Automatic', engine_type: 'Electric', price: 72, mileage: 33,000 )

car4 = Rental_car.create(owner_id: owner4.id, renter_id: renter4.id, make:'Honda', model: 'Acty', year: 1996, type:'2dr Truck', rating: 3, color: 'white', picture: 'shorturl.at/bcqu3', description: 'Small truck, great for local pick ups from IKEA.', transmission: 'Manual', engine_type: 'Gas', price: 47, mileage: 84,212 )

car5 = Rental_car.create(owner_id: owner5.id, renter_id: renter5.id, make:'Honda', model: 'NSX', year: 1994, type:'2dr Coupe', rating: 5, color: 'dark green', picture: 'shorturl.at/kHRS6', description: 'A great sports car of its time. With looks inspired from ferrari you will definitely turn heads.', transmission: 'Manual', engine_type: 'Gas', price: 208, mileage: 91,555)

car6 = Rental_car.create(owner_id: owner1.id, renter_id: renter6.id, make:'Nissan', model: 'S14 Silvia', year: 1996, type:'2dr Coupe', rating: 5, color: 'yellow', picture: 'shorturl.at/hntX4', description: 'If you want a car that goes straight, this is not the car for you. This baby likes to go sideways.', transmission: 'Manual', engine_type: 'Gas', price: 85, mileage: 87,000 )

car7 = Rental_car.create(owner_id: owner2.id, renter_id: renter7.id, make:'Honda', model: 'Accord', year: 2016, type:'4dr Sedan', rating: 4, color: 'black', picture: 'shorturl.at/ity17', description: 'Great space and good on gas!', transmission: 'Automatic', engine_type: 'Hybrid', price: 65, mileage: 63,000)

car8 = Rental_car.create(owner_id: owner3.id, renter_id: renter8.id, make:'Nissan', model: 'Altima', year: 2007, type:'4dr Sedan', rating: 4, color: 'blue', picture: 'https://tinyurl.com/2npbhejn', description: 'Voted best mid-size car for 2007 by J.D Powers', transmission: 'Automatic', engine_type: 'Gas', price: 55, mileage: 110,000)

car9 = Rental_car.create(owner_id: owner4.id, renter_id: renter9.id, make:'Toyota', model: 'Prius', year: 2020, type:'4dr Compact Sedan', rating: 3, color: 'white', picture: 'https://tinyurl.com/3yyw4rv2', description: 'Compact car for those who pack light. Environmentally friendly.', transmission: 'Automatic', engine_type: 'Hybrid', price: 45, mileage: 65,000 )

car10 = Rental_car.create(owner_id: owner5.id, renter_id: renter10.id, make:'Cheverolet', model: 'Tahoe', year: 2018, type:'SUV', rating: 4, color: 'graphite', picture: 'https://tinyurl.com/2s3ks6a4', description: 'Go big or go home! Voted #2 Large SUV in 2018. This SUV is perfect for family/friend road trips.', transmission: 'Automatic', engine_type: 'Gas', price: 90, mileage: 78,319)

car11 = Rental_car.create(owner_id: owner1.id, renter_id: renter2.id, make:'Maserati', model: 'Ghibli', year: 2023, type:'4dr Luxury Sedan', rating: 5, color: 'blue', picture: 'https://tinyurl.com/5735vx5x', description: 'If you like fast cars with some luxury, this car is for you.', transmission: 'Automatic', engine_type: 'Gas', price: 280, mileage: 45)

car12 = Rental_car.create(owner_id: owner2.id, renter_id: renter4.id, make:'Nissan', model: 'Maxima', year: 2022, type:'4dr Sedan', rating: 4, color: 'red', picture: 'https://tinyurl.com/bdct5r7n', description: 'Nissan never disappoints, drive fast or take it easy, this Maxima has everything & more in a car.', transmission: 'Automatic', engine_type: 'Gas', price: 125, mileage: 22,312)

car13 = Rental_car.create(owner_id: owner3.id, renter_id: renter6.id, make:'Chevrolet', model: 'Silverado', year: 2021, type: 'Pickup', rating: 5, color: 'black', picture: 'https://tinyurl.com/ms75hfm6', description: 'Chevy Full Size "Truck of the Year" ', transmission: 'Automatic', engine_type: 'Gas', price: 125, mileage: 55,076)

car14 = Rental_car.create(owner_id: owner4.id, renter_id: renter8.id, make: 'Toyota', model: 'Tacoma', year: 2022, type: 'Pickup', rating: 5, color: 'green', picture: 'https://tinyurl.com/2wbayd79', description: 'Sporty & versatile', transmission: 'Automatic', engine_type: 'Gas', price: 100, mileage: 40,876)

car15 = Rental_car.create(owner_id: owner5.id, renter_id: renter10.id, make: 'Ford', model: 'F150', year: 2020, type:'Pickup', rating: 5, color: 'white', picture: 'https://tinyurl.com/5n7ysmua', description: 'A working man\'s truck', transmission: 'Automatic', engine_type: 'Gas', price: 150, mileage: 48,312

car16 = Rental_car.create(owner_id: owner1.id, renter_id: renter1.id, make: 'Ford', model: 'Ranger', year: 2020, type:'Pickup', rating: 5, color: 'orange', picture: 'https://tinyurl.com/2p9emxn4', description: 'For those who have little jobs to do!', transmission: 'Automatic', engine_type: 'Gas', price: 75, mileage: 67,712 )

car17 = Rental_car.create(owner_id: owner2.id, renter_id: renter3.id, make: 'GMC', model: 'Sierra', year: 2020, type:'Pickup', rating: 4, color: 'black', picture: 'https://tinyurl.com/4e5vhhe8', description: 'Sophistication meets a truck!', transmission: 'Automatic', engine_type: 'Gas', price: 160, mileage: 81,912)

car18 = Rental_car.create(owner_id: owner3.id, renter_id: renter5.id, make: 'Chevrolet', model: 'Colorado', year: 2021, type:'Pickup', rating: 2, color: 'orange', picture: 'https://tinyurl.com/mtn9td6c', description: 'Chevy\'s sporty option for a mid size Pick Up Truck', transmission: 'Automatic', engine_type: 'Gas', price: 100, mileage: 32,912)











puts "👫🏿👫🏿Seeding Renters....."
renter1 =Renter.create(first_name: 'Sisely', last_name: 'Grund', email: 'sgrundj@gov.uk', phone: (969)722-9314, birthdate: 19/06/1992, age: 30, avatar:'https://robohash.org/eligendiadaliquam.jpg?size=180x180&set=set1' )
renter2 =Renter.create(first_name: 'Gareth', last_name: 'Carlozzi', email: 'gcarlozzik@indiegogo.com', phone: 352(908) 792-9951, birthdate: 16/10/1992, age: 30, avatar: 'https://robohash.org/quiaetquidem.jpg?size=180x180&set=set1')
renter3 =Renter.create(first_name: 'Judah', last_name: 'Cody', email: 'jcodyl@google.pl', phone: 358  853-9991, birthdate: 06/9/1997, age: 25, avatar:'https://robohash.org/velsuscipitfuga.png?size=180x180&set=set1', )
renter4 =Renter.create(first_name: 'Ilise', last_name: 'Filipponi' email:'ifilipponim@sciencedaily.com' phone: (591)800-8892, birthdate: 19/1/1997, age: 24, avatar:'https://robohash.org/reprehenderitconsequaturveniam.jpg?size=180x180&set=set1')
renter5 =Renter.create(first_name: 'Forster',last_name: 'Brownlow', email:'fbrownlown@dion.ne.jp', phone: (436)506-0536, birthdate: 10/10/1996, age: 26, avatar:'https://robohash.org/estquicorrupti.jpg?size=180x180&set=set1')
renter6 =Renter.create(first_name: 'Emmott', last_name: 'Fowlds', email: 'efowldso@hao123.com', phone: (803) 182-9995, birthdate: 20/9/2004, age:18, avatar:'https://robohash.org/doloremquenecessitatibussit.png?size=180x180&set=set1')
renter7 =Renter.create(first_name: 'Kala', last_name:'Byram', email: 'kbyramp@blogspot.com' phone: (650) 973-7616, birthdate: 8/9/1991 age: 31, avatar: 'https://robohash.org/sednatusodit.png?size=180x180&set=set1')
renter8 =Renter.create(first_name: 'Turner', last_name:'Shailer' email:'tshailerq@ustream.tv' phone: (884) 959-8794, birthdate:23/9/1996, age: 26, avatar:'https://robohash.org/faceresintaut.jpg?size=180x180&set=set1')
renter9 =Renter.create(first_name: 'Laney', last_name:'Feaster', email:'lfeasterr@dropbox.com' phone: (367) 148-8096, birthdate:27/1/1997 age: 25, avatar: 'https://robohash.org/magniquisquia.png?size=180x180&set=set1')
renter10 =Renter.create(first_name: 'Karen', last_name:'Dolligan', email: 'kdolligons@wsj.com', phone:(654) 474-9834, birthdate:29/10/1992, age: 30, avatar: "https://robohash.org/doloremutmaxime.png?size=180x180&set=set1")


puts "💯 Done...."
