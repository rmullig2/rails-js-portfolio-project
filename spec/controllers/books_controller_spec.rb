require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  before(:each) { @title = 'Angels and Demons'; @author = "Dan Brown"; @year = 2005; @fiction = true }
  
  it "cannot create a book without a title" do
    Book.create(author: @author, year: @year, fiction: @fiction)
    expect(Book.last).to be_nil
  end

end
