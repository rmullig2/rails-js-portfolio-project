require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do
  User.create(email: 'test_user@yahoo.com', password: "password123", password_confirmation: 'password123')
  before(:each) { @user = User.last }
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
  
  describe "basic listing, viewing and editing" do
    let(:review) { Review.create!(summary: @summary, rating: @rating, body: @body, user: @user, book: @book) }

    it "lists all songs" do
      get :index
      expect(assigns(:reviews)).to eq([review])
    end

    it "views a single review" do
      get :show, params: { id: review.id }
      expect(assigns(:review)).to eq(review)
    end
    
    it "fetches a review for editing" do
      get :edit, params: { id: review.id }
      expect(assigns(:review)).to eq(review)
    end
  end

end
