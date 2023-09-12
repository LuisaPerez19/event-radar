# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts 'Deleting existing records...'

# Review.delete_all
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
  username: "Aqil",
  email: "Aqil@myevent.com",
  password: "123456",
  password_confirmation: "123456"
)

user3 = User.create!(
  username: "Aaron",
  email: "Aaron@myevent.com",
  password: "123456",
  password_confirmation: "123456"
)

user4 = User.create!(
  username: "Zina",
  email: "Zina@myevent.com",
  password: "123456",
  password_confirmation: "123456"
)

indie_file = URI.open("https://images.unsplash.com/photo-1492684223066-81342ee5ff30?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")

event1 = Event.new(
  name: "Indie Vibes Unplugged",
  description: "Dive into an intimate evening of acoustic melodies at the Indie Vibes Unplugged music event. Set in a cozy, candlelit café, this event features talented singer-songwriters strumming their guitars and pouring their hearts out in soul-stirring performances. Expect a night of raw emotions and captivating lyrics, where the power of storytelling takes center stage",
  price: 12,
  category: "Music",
  location:"278 St Paul's Rd, London N1 2LH",
  start_date: DateTime.new(2023, 8, 10, 4, 10, 9),
  end_date:DateTime.new(2019, 8, 10, 4, 10, 9),
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
  photo_url: "jazz.jpg",
  start_date: DateTime.new(2019, 8, 10, 4, 10, 9),
  end_date:DateTime.new(2019, 8, 10, 4, 10, 9),
  location: "Grand Buildings, 31-32 Northumberland Ave, London WC2N 5BW",
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
  photo_url: "rock.jpg",
  start_date: DateTime.new(2019, 8, 10, 4, 10, 9),
  end_date:DateTime.new(2019, 8, 10, 4, 10, 9),
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
  photo_url: "rock.jpg",
  location:"4 St James's Mkt, St. James's, London SW1Y 4AH",
  start_date: DateTime.new(2019, 8, 10, 4, 10, 9),
  end_date:DateTime.new(2019, 8, 10, 4, 10, 9),
  user: user1
)
event4.photos.attach(io: electronic_file, filename: "rock.png", content_type: "image/png")
event4.save!

puts "finished"
