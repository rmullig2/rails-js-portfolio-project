require 'rails_helper'

RSpec.describe Book, type: :model do
  subject { @book }

  it "should not save without a title" do
    @book = Book.new(author: "Dan Brown", year: 2005, fiction: true)
    @book.save
    expect(Book.last).to be_nil
  end
  
  it "should not save without an author" do
    @book = Book.new(title: "Angels and Demons", year: 2005, fiction: true)
    @book.save
    expect(Book.last).to be_nil
  end

  it "should not save without a year" do
    @book = Book.new(title: "Angels and Demons", author: "Dan Brown", fiction: true)
    @book.save
    expect(Book.last).to be_nil
  end
  
  it "should save if all required information is provided" do
    @book = Book.new(title: "Angels and Demons", author: "Dan Brown", year: 2005, fiction: true)
    @book.save
    expect(Book.last.title).to match 'Angels and Demons'
  end

end
