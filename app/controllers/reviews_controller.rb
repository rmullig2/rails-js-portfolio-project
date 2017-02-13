class ReviewsController < ApplicationController
  
  def index
    @reviews = Review.all
  end
  
  def show
    @review = Review.find(params[:id])
  end
  
  def edit
    @review = Review.find(params[:id])
  end
  
  def new
    @book = Book.find(params[:book_id])
    @review = Review.new
  end
end
