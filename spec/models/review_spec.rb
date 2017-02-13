require 'rails_helper'

RSpec.describe Review, type: :model do
  before(:each) { @user = User.new(email: 'test_user@yahoo.com', password: "password123") }
  before(:each) { @book = Book.new(title: 'Angels and Demons', author: "Dan Brown", year: 2005, fiction: true) }
  before(:each) { @review = Review.new(summary: 'A genuine page turner', rating: 3,
                                       body: "The book is laced with fun facts about electing a pope and the
                                       Vatican, like that St. Peter's bones are not in the golden casket in St.
                                       Peter's Basilica, but two stories under it. Brown knows the layout.
                                       And that the artist Raphael's last name was Santi. He also knows how marble
                                       statues were carved. Brown's no Irving Stone (THE AGONY AND THE ECSTACY),
                                       but he does manage to inform without being pedantic.
                                       
                                       As Vittoria and Langdon race around Rome, we get quite a tour, with great
                                       descriptions. (Pick up a paperback copy next summer and bring it to Rome.
                                       Take the Brown tour.) What's interesting is that all the places and pieces of
                                       art in this book really exist.", user: @user, book: @book) }

  subject { @review }

  it { should respond_to(:summary) }

  it "#title returns a string" do
    expect(@review.summary).to match 'A genuine page turner'
  end
  
  it { should respond_to(:rating) }

  it "#rating returns an integer" do
    expect(@review.rating).to match 3
  end

  it 'belongs to a user' do 
    expect(@review.user).to eq (@user)
  end

  it 'belongs to a book' do 
    expect(@review.book).to eq (@book)
  end
  
  it 'does not allow a user to write multiple reviews of the same book' do
    @review.save
    @review2 = Review.new(user: @user, book: @book, rating: 4, summary: "A new review", body: "Try to create a new review")
    @review2.save
    expect(Review.last.summary).to match "A genuine page turner"
  end

end
