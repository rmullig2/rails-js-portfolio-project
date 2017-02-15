class ReviewsController < ApplicationController
  
  def index
    @reviews = Review.all
  end
  
  def show
    #binding.pry
    @reviews = Review.book_review(params[:book_id])
    #@review = Review.find(params[:id])
  end
  
  def edit
    @review = Review.find(params[:id])
  end
  
  def new
    @book = Book.find(params[:book_id])
    @review = Review.new
  end
  
  def create
    @review = Review.new(summary: params[:review][:summary], rating: params[:review][:rating], body: params[:review][:rating], book_id: params[:book_id], user_id: current_user.id)
    @book = Book.find(params[:book_id])
    if @review.save
      redirect_to book_reviews_path(@book)
    else
      redirect_to book_path(@book)
    end
  end
end
