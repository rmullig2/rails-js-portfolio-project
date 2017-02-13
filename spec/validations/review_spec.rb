require 'rails_helper'

RSpec.describe Review, type: :model do
  @user = User.create(email: 'test_user@yahoo.com', password: "password123", password_confirmation: 'password123')
  before(:each) { @book = Book.new(title: 'Angels and Demons', author: "Dan Brown", year: 2005, fiction: true) }
  before(:each) { @summary = 'A genuine page turner' }
  before(:each) { @rating = 3 }
  before(:each) { @body = "The book is laced with fun facts about electing a pope and the
                          Vatican, like that St. Peter's bones are not in the golden casket in St.
                          Peter's Basilica, but two stories under it. Brown knows the layout.
                          And that the artist Raphael's last name was Santi. He also knows how marble
                          statues were carved. Brown's no Irving Stone (THE AGONY AND THE ECSTACY),
                          but he does manage to inform without being pedantic.
                                       
                          As Vittoria and Langdon race around Rome, we get quite a tour, with great
                          descriptions. (Pick up a paperback copy next summer and bring it to Rome.
                          Take the Brown tour.) What's interesting is that all the places and pieces of
                          art in this book really exist." }

  it "should not save without a rating" do
    @review = Review.new(summary: @summary, body: @body, user: @user, book: @book)
    @review.save
    expect(Review.last).to be_nil
  end
  
  it "should not save without a summary" do
    @review = Review.new(rating: @rating, body: @body, user: @user, book: @book)
    @review.save
    expect(Review.last).to be_nil
  end

  it "should not save without a user" do
    @review = Review.new(rating: @rating, summary: @summary, body: @body, book: @book)
    @review.save
    expect(Review.last).to be_nil
  end

  it "should not save without a book" do
    @review = Review.new(rating: @rating, summary: @summary, body: @body, user: @user)
    @review.save
    expect(Review.last).to be_nil
  end
  
  it "should save with all necessary information" do
    @user = User.last
    @review = Review.new(rating: @rating, summary: @summary, body: @body, user: @user, book: @book)
    @review.save
    expect(Review.last.user).to match @user
  end
  
end
