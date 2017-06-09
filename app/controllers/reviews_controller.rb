class ReviewsController < ApplicationController
  before_action :load_review, only: [:edit, :update, :destroy]

  def index
    @reviews = Review.all
  end
  
  def show
    #binding.pry
    @book = Book.find(params[:book_id])
    @reviews = Review.book_review(params[:book_id])
    render json: @book.reviews
  end
  
  def edit
  end
  
  def new
    @book = Book.find(params[:book_id])
    @review = Review.new
  end
  
  def create
    @review = Review.new(summary: params[:review][:summary], rating: params[:review][:rating], body: params[:review][:body], book_id: params[:book_id], user_id: current_user.id)
    @book = Book.find(params[:book_id])
    #binding.pry
    if @review.save
      #binding.pry
      #redirect_to book_reviews_path(@book)
      render json: @review
    else
      flash[:error] = "All fields must be filled in"
      #binding.pry
      #redirect_to book_path(@book)
      render json: '{}'
    end
  end
  
  def update
    #code
  end
  
  def destroy
    @review.destroy
  end
end
