# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([
 { :email => "admin@home.com", :password => "password123", :admin? => true },
 { :email => "bigreader@yahoo.com", :password => "password123"},
 { :email => "jackiec@msn.com", :password => "password123"},
 { :email => "alliek@hotmail.com", :password => "password123"},
 { :email => "joeyd@google.com", :password => "password123"},
 { :email => "nlee@rutgers.edu", :password => "password123"},
 { :email => "philm@irs.gov", :password => "password123"},
 { :email => "bigfish@abc.com", :password => "password123"},
 { :email => "frankief@nyu.edu", :password => "password123"},
 { :email => "joannaz@sprint.com", :password => "password123"},
])

UserInfo.create([
 { :name => "", :city => "Enid", :state => "OK", :user_id => 2},
 { :name => "", :city => "Chicago", :state => "ILL", :user_id => 3},
 { :name => "", :city => "Huntington", :state => "NY", :user_id => 4},
 { :name => "", :city => "Savannah", :state => "GA", :user_id => 5},
 { :name => "", :city => "Sacremento", :state => "CA", :user_id => 6},
 { :name => "", :city => "Jackson", :state => "MS", :user_id => 7},
 { :name => "", :city => "St. Paul", :state => "MN", :user_id => 8},
 { :name => "", :city => "Houston", :state => "TX", :user_id => 9},
 { :name => "", :city => "Raleigh", :state => "NC", :user_id => 10},
])

Book.create([
  { :title => "Catching Fire", :author => "Suzanne Collins", :year => 2009, :fiction => true, :user_id => 3},
  { :title => "StrengthsFinder 2.0", :author => "Tom Rath", :year => 2007, :fiction => false, :user_id => 8},
  { :title => "Gone Girl", :author => "Gillian Flynn", :year => 2014, :fiction => true, :user_id => 5},
  { :title => "The Help", :author => "Kathryn Stockett", :year => 2011, :fiction => true, :user_id => 2},
  { :title => "Unbroken: A World War II Story of Survival, Resilience, and Redemption", :author => "Laura Hillenbrand", :year => 2014, :fiction => false, :user_id => 10},
  { :title => "Heaven is for Real", :author => "Todd Burpo", :year => 2010, :fiction => false, :user_id => 10},
  { :title => "Who Moved My Cheese?", :author => "Kenneth Blanchard", :year => 1998, :fiction => false, :user_id => 4},
  { :title => "A Game of Thrones", :author => "George Martin", :year => 2011, :fiction => true, :user_id => 3},
  { :title => "The Martian", :author => "Andy Weir", :year => 2014, :fiction => true, :user_id => 7},
  { :title => "Atlas Shrugged", :author => "Ayn Rand", :year => 1996, :fiction => true, :user_id => 4},
])

Review.create([
 { :summary => "An improvement in every aspect!", :body => "All too often, I find that sequels just don't provide a worthy follow up to the original or that sometimes the original story is just so incomplete that I hardly have any desire to move forward for fear of never receiving a satisfying conclusion. For this reason, I often stay away from sequels and even series in general, at least in terms of books. I think this is part of the reason it took me so long to pick up Suzanne Collins' CATCHING FIRE (The Hunger Games Book 2) despite having read the original and seen both of the respective movies a long while ago. The CATCHING FIRE movie adaptation was one of the few movie sequels that I ever thought to be drastically better than the previous film in every way possible. That's not to say that it made me like the first any less, just that I felt it had improved in all aspects. And so I went into this book with timid excitement, hoping I would feel the same way.", :rating => 4, :user_id => 3, :book_id => 1},
 { :summary => "This book is super short", :body => "I mean, in terms of actual analyses and content - otherwise it is just a gigantic dictionary for each strength it identifies. You're essentially paying a lot of money for the test and the dictionary. For me, I didn't tell me anything new, and I suppose personally I don't necessarily agree with the author's theories. Anyway, I won't go into that as I think the majority of the 2 star rating I'm giving is due to the surprise that the book is just a dictionary... In which I didn't find any of the terms to be significant or new. If you are someone that does a lot of self-analyses to begin with, I may just pass on this book and look for something more complex / in-depth.", :rating => 2, :user_id => 8, :book_id => 2},
 { :summary => "Disgusting time waster", :body => "Let me say this first. I rarely read books with this format, jumping from one character to another. I find it distracting and disconnected. I continued to plod my way through disliking everything about each of the players...surely one or the other would have a redeeming quality. But as we know this would not be the case. If there are these kinds of lunatics out there I am so glad I haven't knowingly come across any. To me, it became ridiculously foolish. I always finish a book so I did just that.", :rating => 1, :user_id => 5, :book_id => 3},
 { :summary => "A book for learning!!", :body => "Excellent book. The subject is always timely. It should be in every schools reading list. As the old saying..'If we don't learn from the past, we will be forest to relive it.'", :rating => 5, :user_id => 2, :book_id => 4},
 { :summary => "Testament of will power and resilience", :body => "Reading this book has been an absolutely exhilarating experience and extremely motivating to carry on in spite of insurmountable hurdles in life .
The suffering of veterans of world war 2 and how few of them had the will to live through days of being stranded in the ocean and years being violated as POW has been illustrated in great depths by the author . Great narrative of the live of war hero who didn't give up in spite of unspeakable horror that has bestowed upon him . Must read for young kids of this generation who have the tendency to give us so easily", :rating => 4, :user_id => 10, :book_id => 5},
 { :summary => "amazing", :body => "I feel like so many people have questions about what will happen to them when they die and this book makes your heart happy. Mine was very happy. Happy to hear such wonderful descriptions. I myself wondered what would happen to me when I pass and often get scared of the thought. This book has made my faith stronger. I recommended this book to at least 6 of my friends before the days end. Can't wait to read it again tomorrow!", :rating => 5, :user_id => 10, :book_id => 6},
 { :summary => "Quintesential Managment Book", :body => "Pros: Its short, sweet & to the point. Cons: I don't mind change, but usually when a group is asked to read this book it's like saying some sh%t is about to hit the fan & we don't want to hear any whining! Lol.", :rating => 3, :user_id => 4, :book_id => 7},
 { :summary => "SUMMER IS OVER. WINTER IS COMING. BOOKS RULE.", :body => "Long term fans of the genre will make immediate comparisons to other giants (!) of the field, and the first name to spring to mind will, of course, be J R R Tolkien, with his breathtaking LORD OF THE RINGS trilogy. On a superficial level, Martin’s books are longer (by a looooong way) and yet despite the extra length and time involved in writing and reading them, he has failed to gift the reader with the quality of prose, and downright beauty, that is the trademark of Gandalf, Frodon, Elrond and company.", :rating => 4, :user_id => 3, :book_id => 8},
 { :summary => "Extreme Tourism", :body => "Quite a few people who saw me reading 'The Martian' couldn't stop ranting and raving about Mr. Weir's novel. Maybe their enthusiasm boosted my expectations to unrealistic levels because I thought the book was just okay. The author loves science and describes in very specific detail what Mark Watney did to solve problems in order to survive.", :rating => 3, :user_id => 7, :book_id => 9},
 { :summary => "Enjoyed reading", :body => "Was a book I was most curious to read. Once I started reading I had a hard time putting it down. I liked the development of the characters and found myself agreeing with the subject of the book. It's amazing how the story line fits into today's world. Even though this book was written a half century ago the authors' insights could easily be applied to life today. I intend to read more of Ayn Rands' work. Wish I had read this earlier in my life.", :rating => 5, :user_id => 4, :book_id => 10},
])