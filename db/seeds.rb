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
  user: user1
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
  user: user1
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
  user: user1
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
  user: user1
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
  user: user2
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
  user: user2
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
  user: user2
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
  user: user2
)
event7.photos.attach(io: street_file, filename: "stars.png", content_type: "image/png")
event7.save!

chocolate1_file = URI.open("https://plus.unsplash.com/premium_photo-1661479328777-e1692d224ae6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80")
event8 = Event.new(
  name: "Chocolate Lovers' Paradise",
  description: "Dive into a world of chocolate bliss at our Chocolate Lovers' Paradise event. Immerse yourself in a sensory journey where you can sample artisanal chocolates from around the world. From rich dark chocolates to creamy milk chocolates, this event is a cocoa lover's dream come true",
  price: 50,
  category: "food",
  location:"133 Victoria St, London SW1E 6RD",
  start_date: DateTime.new(2023, 9, 30, 8, 10),
  end_date:DateTime.new(2023, 9, 30, 12, 10),
  user: user2
)
event8.photos.attach(io: chocolate1_file, filename: "chocolate.png", content_type: "image/png")
event8.save!

chocolate2_file = URI.open("https://images.unsplash.com/photo-1526081715791-7c538f86060e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
event9 = Event.new(
  name: "Chocolate and Truffle-Making Workshop",
  description: "Ever wanted to create your own chocolate masterpieces? Join us for a hands-on chocolate and truffle-making workshop. Learn the art of tempering, molding, and decorating chocolates from expert chocolatiers. It's a sweet opportunity to unleash your inner chocolatier",
  price: 50,
  category: "food",
  location:"230B Dalston Ln, London E8 1LA",
  start_date: DateTime.new(2023, 9, 30, 8, 10),
  end_date:DateTime.new(2023, 9, 30, 12, 10),
  user: user2
)
event9.photos.attach(io: chocolate2_file, filename: "chocolate.png", content_type: "image/png")
event9.save!

chocolate3_file = URI.open("https://www.virginwines.co.uk/hub/wp-content/uploads/2018/03/Chocolate-with-glass-of-red-wine-2560x1440.jpg")
event10 = Event.new(
  name: "Chocolate and Wine Tasting",
  description: "Unleash your inner chocophile at our chocolate and wine tasting event. Delight in a decadent assortment of chocolates paired with fine wines for a luxurious and delectable experience. Discover the sweet harmony between cacao and grapes",
  price: 50,
  category: "food",
  location:"59 Ledbury Rd, London W11 2AA",
  start_date: DateTime.new(2023, 10, 1, 8, 10),
  end_date:DateTime.new(2023, 10, 1, 12, 10),
  user: user2
)
event10.photos.attach(io: chocolate3_file, filename: "chocolate.png", content_type: "image/png")
event10.save!

puts "finished"
