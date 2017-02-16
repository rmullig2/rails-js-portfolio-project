require 'pry'
class BooksController < ApplicationController
  
  def index
    @books = Book.all
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def create
    @book = Book.new(params.require(:book).permit(:title, :author, :year, :fiction))
    if @book.save
      redirect_to book_path(@book)
    else
      flash[:error] = "Please fill in all fields"
      render :new
    end
  end
  
  def new
    @book = Book.new
  end
  
  def update
    @book = Book.find(params[:id])
    @book.assign_attributes(params.require(:book).permit(:title, :author, :year, :fiction))
    if @book.valid?
      @book.update(params.require(:book).permit(:title, :author, :year, :year, :fiction))
      redirect_to book_path(@book)
    else
      flash[:error] = "All fields must be specified"
      render :edit
    end
  end
  
  def destroy
    @book = Book.find_by(params[:id])
    if !@book.nil?
      @book.destroy
    end
    redirect_to books_path
  end
  
end
