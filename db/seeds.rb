# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts 'Deleting existing records...'

Message.delete_all
Chatroom.delete_all
Booking.delete_all
Event.delete_all
User.delete_all



puts 'Seeding..'

user1 = User.create!(
  username: "Luisa Perez",
  email: "luisa.perez@myevent.com",
  password: "123456",
  password_confirmation: "123456"
)

user2 = User.create!(
  username: "Aqil Imran",
  email: "Aqil@myevent.com",
  password: "123456",
  password_confirmation: "123456"
)

user3 = User.create!(
  username: "Aaron Ayoubi",
  email: "Aaron@myevent.com",
  password: "123456",
  password_confirmation: "123456"
)

user4 = User.create!(
  username: "Zina Ivashko",
  email: "Zina@myevent.com",
  password: "123456",
  password_confirmation: "123456"
)

user5 = User.create!(
  username: "London Events",
  email: "London.events@myevent.com",
  password: "123456",
  password_confirmation: "123456"
)

# music events

indie_file = URI.open("https://images.unsplash.com/photo-1492684223066-81342ee5ff30?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")

event1 = Event.new(
  name: "Indie Vibes Unplugged",
  description: "Dive into an intimate evening of acoustic melodies at the Indie Vibes Unplugged music event. Set in a cozy, candlelit café, this event features talented singer-songwriters strumming their guitars and pouring their hearts out in soul-stirring performances. Expect a night of raw emotions and captivating lyrics, where the power of storytelling takes center stage",
  price: 12,
  category: "Music",
  location: "278 St Paul's Rd, London N1 2LH",
  start_date: DateTime.new(2023, 9, 30, 4, 10),
  end_date: DateTime.new(2023, 9, 30, 8, 10),
  user: user5
)

event1.photos.attach(io: indie_file, filename: "music.png", content_type: "image/png")
event1.save!

jazz_file = URI.open("https://images.unsplash.com/photo-1415201364774-f6f0bb35f28f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")

event2 = Event.new(
  name: "Jazz on the Rooftop",
  description: "Elevate your senses at Jazz on the Rooftop, where the city skyline becomes the backdrop to an evening of smooth jazz and sophistication. Set atop a stylish skyscraper, this event offers live jazz bands, artisanal cocktails, and breathtaking views. Immerse yourself in the timeless tunes that evoke the golden era of jazz while savoring the city's ambiance",
  price: 10,
  category: "Music",
  start_date: DateTime.new(2023, 9, 30, 4, 10),
  end_date:DateTime.new(2023, 9, 30, 8, 10),
  location: "5 Panton St, London SW1Y 4DL",
  user: user5
)
event2.photos.attach(io: jazz_file, filename: "jazz.png", content_type: "image/png")
event2.save!

rock_file = URI.open("https://images.unsplash.com/photo-1524368535928-5b5e00ddc76b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")

event3 = Event.new(
  name: "Rockin' Retro Revival",
  description: "Step back in time and relive the glory days of rock 'n' roll at the Rockin Retro Revival. This nostalgic event transports you to a vintage-style venue adorned with retro decor and classic rock memorabilia. Enjoy electrifying live performances by tribute bands, capturing the essence of legendary rock icons from the 60s and 70s, and let the music transport you to a bygone era of rebellion and rockstar glamour",
  price: 10,
  category: "music",
  start_date: DateTime.new(2023, 9, 30, 4, 10),
  end_date:DateTime.new(2023, 9, 30, 8, 10),
  location:"4 St James's Mkt, St. James's, London SW1Y 4AH",
  user: user5
)
event3.photos.attach(io: rock_file, filename: "rock.jpg", content_type: "image/png")
event3.save!

electronic_file = URI.open("https://images.unsplash.com/photo-1574154894072-18ba0d48321b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
event4 = Event.new(
  name: "Rockin' Retro Revival",
  description: "Step back in time and relive the glory days of rock 'n' roll at the Rockin Retro Revival. This nostalgic event transports you to a vintage-style venue adorned with retro decor and classic rock memorabilia. Enjoy electrifying live performances by tribute bands, capturing the essence of legendary rock icons from the 60s and 70s, and let the music transport you to a bygone era of rebellion and rockstar glamour",
  price: 10,
  category: "music",
  location:"37 Charlotte St., London W1T 1RR",
  start_date: DateTime.new(2023, 10, 1, 4, 10),
  end_date:DateTime.new(2023, 10, 1, 8, 10),
  user: user5
)
event4.photos.attach(io: electronic_file, filename: "rock.png", content_type: "image/png")
event4.save!

summer_file = URI.open("https://images.unsplash.com/photo-1472653816316-3ad6f10a6592?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2069&q=80")
event5 = Event.new(
  name: "Summer Music Festival",
  description: "Join us for a weekend of sun, music, and fun at our annual Summer Music Festival. Featuring top artists from various genres, food trucks, and a vibrant atmosphere, it's the ultimate way to kick off the summer season",
  price: 50,
  category: "music",
  location:"85 Piccadilly, London W1J 7NB",
  start_date: DateTime.new(2023, 10, 1, 4, 10),
  end_date:DateTime.new(2023, 10, 1, 8, 10),
  user: user5
)
event5.photos.attach(io: summer_file, filename: "summer-festival.png", content_type: "image/png")
event5.save!

stars_file = URI.open("https://images.unsplash.com/photo-1525093485273-34834413e1ba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
event6 = Event.new(
  name: "Jazz Under the Stars",
  description: "Experience the magic of live jazz music under a canopy of stars. Bring your picnic blanket and relax to the smooth sounds of jazz legends and emerging talents at this open-air concert",
  price: 50,
  category: "music",
  location:"52 Wilton Way, London E8 1BG",
  start_date: DateTime.new(2023, 10, 1, 4, 10),
  end_date:DateTime.new(2023, 10, 1, 8, 10),
  user: user5
)
event6.photos.attach(io: stars_file, filename: "stars.png", content_type: "image/png")
event6.save!

salsa_file = URI.open("https://images.unsplash.com/photo-1504609813442-a8924e83f76e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
event7 = Event.new(
  name: "Latin Fiesta: Salsa Night",
  description: "Spice up your evening with Latin Fiesta's Salsa Night. Learn some moves or show off your dancing skills to the rhythm of live salsa bands and DJ mixes",
  price: 50,
  category: "music",
  location:"96 Charing Cross Rd, London WC2H 0JG",
  start_date: DateTime.new(2023, 9, 30, 8, 10),
  end_date:DateTime.new(2023, 9, 30, 12, 10),
  user: user5
)
event7.photos.attach(io: salsa_file, filename: "stars.png", content_type: "image/png")
event7.save!

# food events

street_file = URI.open("https://images.unsplash.com/photo-1683731505481-a529c4df34f8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80")
event7 = Event.new(
  name: "International Street Food Festival",
  description: "Embark on a global gastronomic adventure without leaving your city! Explore a vibrant tapestry of international flavors, from mouthwatering tacos to savory samosas. Our street food festival promises a world of taste in one bustling event",
  price: 50,
  category: "food",
  location:"49 Columbia Rd, London E2 7RG",
  start_date: DateTime.new(2023, 9, 30, 8, 10),
  end_date:DateTime.new(2023, 9, 30, 12, 10),
  user: user5
)
event7.photos.attach(io: street_file, filename: "stars.png", content_type: "image/png")
event7.save!

chocolate1_file = URI.open("https://plus.unsplash.com/premium_photo-1661479328777-e1692d224ae6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80")
event8 = Event.new(
  name: "Chocolate Lovers' Paradise",
  description: "Dive into a world of chocolate bliss at our Chocolate Lovers' Paradise event. Immerse yourself in a sensory journey where you can sample artisanal chocolates from around the world. From rich dark chocolates to creamy milk chocolates, this event is a cocoa lover's dream come true",
  price: 47,
  category: "food",
  location:"133 Victoria St, London SW1E 6RD",
  start_date: DateTime.new(2023, 9, 30, 8, 10),
  end_date:DateTime.new(2023, 9, 30, 12, 10),
  user: user5
)
event8.photos.attach(io: chocolate1_file, filename: "chocolate.png", content_type: "image/png")
event8.save!

chocolate2_file = URI.open("https://images.unsplash.com/photo-1526081715791-7c538f86060e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
event9 = Event.new(
  name: "Chocolate and Truffle-Making Workshop",
  description: "Ever wanted to create your own chocolate masterpieces? Join us for a hands-on chocolate and truffle-making workshop. Learn the art of tempering, molding, and decorating chocolates from expert chocolatiers. It's a sweet opportunity to unleash your inner chocolatier",
  price: 33,
  category: "food",
  location:"230B Dalston Ln, London E8 1LA",
  start_date: DateTime.new(2023, 9, 30, 8, 10),
  end_date:DateTime.new(2023, 9, 30, 12, 10),
  user: user5
)
event9.photos.attach(io: chocolate2_file, filename: "chocolate.png", content_type: "image/png")
event9.save!

chocolate3_file = URI.open("https://www.virginwines.co.uk/hub/wp-content/uploads/2018/03/Chocolate-with-glass-of-red-wine-2560x1440.jpg")
event10 = Event.new(
  name: "Chocolate and Wine Tasting",
  description: "Unleash your inner chocophile at our chocolate and wine tasting event. Delight in a decadent assortment of chocolates paired with fine wines for a luxurious and delectable experience. Discover the sweet harmony between cacao and grapes",
  price: 25,
  category: "food",
  location:"59 Ledbury Rd, London W11 2AA",
  start_date: DateTime.new(2023, 10, 1, 8, 10),
  end_date:DateTime.new(2023, 10, 1, 12, 10),
  user: user5
)
event10.photos.attach(io: chocolate3_file, filename: "chocolate.png", content_type: "image/png")
event10.save!

afghan_music = URI.open("https://images.unsplash.com/photo-1508598126084-9dfccbb92cd5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
event11 = Event.new(
  name: "Afghan music event",
  description: "Join us for a weekend of sun, music, and fun at our annual Summer Music Festival. Featuring top artists from various genres, food trucks, and a vibrant atmosphere, it's the ultimate way to kick off the summer season",
  price: 30,
  category: "music",
  location:" Piccadilly, London W1J 7NB",
  start_date: DateTime.new(2023, 10, 1, 4, 10),
  end_date:DateTime.new(2023, 10, 1, 8, 10),
  user: user5
)
event11.photos.attach(io: afghan_music, filename: "afghan-music-eve.png", content_type: "image/png")
event11.save!

Techno_music = URI.open("https://images.unsplash.com/photo-1514525253161-7a46d19cd819?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80")
event12 = Event.new(
  name: "Techno music event",
  description: "Join us for a weekend of sun, music, and fun at our annual Techno Music Festival.",
  price: 30,
  category: "music",
  location:" 154 st pauls close , London W5 3JZ",
  start_date: DateTime.new(2023, 10, 1, 7, 10),
  end_date:DateTime.new(2023, 10, 1, 9, 10),
  user: user5
)
event12.photos.attach(io: Techno_music, filename: "techno-music-eve.png", content_type: "image/png")
event12.save!

Colombian_music = URI.open("https://dancersgroup.org/wp-content/uploads/2019/04/La-Cumbiamba-Photo-by-Robert-Werner7.jpg")
event13 = Event.new(
  name: "Colombian music event",
  description: "Experience the soulful rhythms of Colombia at our music event, where the vibrant sounds of cumbia, vallenato, and reggaeton come to life",
  price: 30,
  category: "music",
  location:"77 Ledbury Rd, London W11 2AA",
  start_date: DateTime.new(2023, 10, 1, 5, 10),
  end_date:DateTime.new(2023, 10, 1, 9, 10),
  user: user5
)
event13.photos.attach(io: Colombian_music, filename: "Colombian-music-eve.png", content_type: "image/png")
event13.save!

# seed data for food events on October 1st, 2023

Ukraine_foodevent = URI.open("https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHVrcmFuaWFuJTIwZm9vZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60")
event14 = Event.new(
  name: "Ukraine Food Event",
  description: "Embark on a gastronomic adventure to Ukraine with our food event, where you'll delight in the diverse and savory flavors of Eastern European cuisine. From hearty borscht to delectable pierogies, experience Ukraine's culinary treasures in one unforgettable gathering",
  price: 21,
  category: "food",
  location:"71 Ledbury Rd, London W11 2AA",
  start_date: DateTime.new(2023, 10, 1, 5, 10),
  end_date:DateTime.new(2023, 10, 1, 9, 10),
  user: user5
)
event14.photos.attach(io: Ukraine_foodevent, filename: "Ukraine_foodevent.png", content_type: "image/png")
event14.save!

Afghan_food = URI.open("https://afghancooks.com/wp-content/uploads/2021/09/IMG_0858_jpg.jpg")
event15 = Event.new(
  name: "Aghan Food Event",
  description: "Savor the authentic tastes of Afghanistan at our food event, where the aromatic spices and flavors of Afghan cuisine transport you to the heart of the Silk Road. Indulge in delectable kebabs, flavorful rice dishes, and mouthwatering desserts for a culinary journey like no other.",
  price: 30,
  category: "food",
  location:"187 Greenford Rd, Greenford UB6 8QY",
  start_date: DateTime.new(2023, 10, 1, 18, 10),
  end_date:DateTime.new(2023, 10, 1, 22, 10),
  user: user5
)
event15.photos.attach(io: Afghan_food, filename: "Afghan_food.png", content_type: "image/png")
event15.save!

Colombia_foodevent = URI.open("https://img.freepik.com/free-photo/tasty-food-arrangement-top-view_23-2148708273.jpg")
event16 = Event.new(
  name: "Colombia Food Event",
  description: "Experience the vibrant flavors of Colombia at our food event, where the fusion of Latin American cuisines takes center stage. Indulge in mouthwatering arepas, savory empanadas, and exotic tropical fruits, all while celebrating the rich culinary heritage of this South American gem",
  price: 45,
  category: "food",
  location:" 180 Oxford St, London W1D 1NT",
  start_date: DateTime.new(2023, 10, 1, 5, 10),
  end_date:DateTime.new(2023, 10, 1, 9, 10),
  user: user5
)
event16.photos.attach(io: Colombia_foodevent, filename: "Colombia_foodevent.png", content_type: "image/png")
event16.save!

Somalian_foodevent = URI.open("https://thumbs.dreamstime.com/b/somalian-ethiopian-plate-amazing-food-traditionnal-meal-oriental-discover-world-vegetables-chicken-beef-spinach-curcuma-248515379.jpg")
event17 = Event.new(
  name: "Somalian Food Event",
  description: "Embark on a flavorful journey to Somalia at our food event, where you'll savor the aromatic spices and diverse dishes of East African cuisine. Taste traditional Somali delights like tender camel meat, aromatic rice, and sweet, honey-infused pastries in a cultural celebration of food and community",
  price: 24,
  category: "food",
  location:"108 Bourne Terrace, London W2 5TH",
  start_date: DateTime.new(2023, 10, 1, 6, 10),
  end_date:DateTime.new(2023, 10, 1, 9, 10),
  user: user5
)
event17.photos.attach(io: Somalian_foodevent, filename: "Somalian_foodevent.png", content_type: "image/png")
event17.save!

lahore_foodevent = URI.open("https://www.locallylahore.com/wp-content/uploads/Flavours-of-The-Walled-City-lahore1.jpg")
event18 = Event.new(
  name: "Lahore Food Event",
  description: "Savor the culinary treasures of Lahore at our food event, where the city's rich gastronomic heritage comes alive. Indulge in fragrant kebabs, aromatic biryanis, and sweet delights, all amidst the vibrant atmosphere of Lahore's food culture",
  price: 30,
  category: "food",
  location:"552 High Rd Leytonstone, London E11 3DH",
  start_date: DateTime.new(2023, 10, 1, 5, 10),
  end_date:DateTime.new(2023, 10, 1, 9, 10),
  user: user5
)
event18.photos.attach(io: lahore_foodevent, filename: "lahore_foodevent.png", content_type: "image/png")
event18.save!


# seed data for education events on October 1st, 2023
# Event 19: Physical Education Workshop
physical_education_workshop = URI.open("https://images.unsplash.com/photo-1550259979-ed79b48d2a30?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1968&q=80")
event19 = Event.new(
  name: "Physical Education Workshop",
  description: "Join us for an engaging physical education workshop where you'll learn the importance of fitness and well-being. Participate in fun activities and exercises.",
  price: 15,
  category: "physical education",
  location: "Buckingham Palace, Westminster, London SW1A 1AA, United Kingdom",
  start_date: DateTime.new(2023, 10, 1, 10, 0),
  end_date: DateTime.new(2023, 10, 1, 14, 0),
  user: user5
)
event19.photos.attach(io: physical_education_workshop, filename: "physical_education_workshop.jpg", content_type: "image/jpeg")
event19.save!


# Event 21: Physics Symposium
physics_symposium = URI.open("https://images.unsplash.com/photo-1453733190371-0a9bedd82893?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80")
event21 = Event.new(
  name: "Physics Symposium",
  description: "Explore the fascinating world of physics at our symposium. Engage in discussions on quantum mechanics, relativity, and the latest advancements in the field.",
  price: 25,
  category: "education",
  location: " Covent Garden, London WC2E 9DD, United Kingdom",
  start_date: DateTime.new(2023, 10, 1, 13, 0),
  end_date: DateTime.new(2023, 10, 1, 18, 0),
  user: user5
)
event21.photos.attach(io: physics_symposium, filename: "physics_symposium.jpg", content_type: "image/jpeg")
event21.save!

# Event 22: Coding Bootcamp
coding_bootcamp = URI.open("https://images.unsplash.com/photo-1531482615713-2afd69097998?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
event22 = Event.new(
  name: "Coding Bootcamp",
  description: "Join our intensive coding bootcamp and accelerate your programming skills. Learn to build web applications from scratch in just two weeks.",
  price: 30,
  category: "education",
  location: "British Museum, Great Russell St, London WC1B 3DG, United Kingdom",
  start_date: DateTime.new(2023, 10, 1, 9, 0),
  end_date: DateTime.new(2023, 10, 1, 17, 0),
  user: user5
)
event22.photos.attach(io: coding_bootcamp, filename: "coding_bootcamp.jpg", content_type: "image/jpeg")
event22.save!

# Event 23: Math Workshop for Kids
math_workshop = URI.open("https://images.unsplash.com/photo-1635070041409-e63e783ce3c1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1979&q=80")
event23 = Event.new(
  name: "Math Workshop ",
  description: "Inspire young minds with our interactive math workshop designed for kids. Make learning math fun and engaging for your child!",
  price: 18,
  category: "education",
  location: "Tower Bridge, Tower Bridge Rd, London SE1 2UP, United Kingdom",
  start_date: DateTime.new(2023, 10, 1, 14, 0),
  end_date: DateTime.new(2023, 10, 1, 16, 0),
  user: user5
)
event23.photos.attach(io: math_workshop, filename: "math_workshop.jpg", content_type: "image/jpeg")
event23.save!

# Event 24: Astronomy Night
astronomy_night = URI.open("https://images.unsplash.com/photo-1533294455009-a77b7557d2d1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
event24 = Event.new(
  name: "Astronomy Night",
  description: "Stargazing enthusiasts, join us for an enchanting night of astronomy. Discover the cosmos, observe celestial objects, and learn about the universe.",
  price: 12,
  category: "education",
  location: "Westminster Abbey, 20 Deans Yd, Westminster, London SW1P 3PA, United Kingdom",
  start_date: DateTime.new(2023, 10, 1, 20, 0),
  end_date: DateTime.new(2023, 10, 1, 23, 0),
  user: user5
)
event24.photos.attach(io: astronomy_night, filename: "astronomy_night.jpg", content_type: "image/jpeg")
event24.save!


History_night = URI.open("https://images.unsplash.com/photo-1515325595179-59cd5262ca53?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1932&q=80")
event26 = Event.new(
  name: "History Night",
  description: "Step back in time and immerse yourself in our captivating history event, where the past comes to life through reenactments, artifacts, and immersive experiences. Join us on a journey through the annals of history",
  price: 12,
  category: "education",
  location: "United Kingdom House, 180 Oxford St, London W1D 1NT",
  start_date: DateTime.new(2023, 10, 1, 20, 0),
  end_date: DateTime.new(2023, 10, 1, 23, 0),
  user: user5
)
event26.photos.attach(io: History_night, filename: "History_night.jpg", content_type: "image/jpeg")
event26.save!
puts "finished"
