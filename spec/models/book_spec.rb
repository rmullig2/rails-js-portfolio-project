require 'rails_helper'

RSpec.describe Book, type: :model do
  before(:each) { @book = Book.new(title: 'Angels and Demons', author: "Dan Brown", year: 2005, fiction: true) }

  subject { @book }

  it { should respond_to(:title) }

  it "#title returns a string" do
    expect(@book.title).to match 'Angels and Demons'
  end
  
  it { should respond_to(:author) }

  it "#author returns a string" do
    expect(@book.author).to match 'Dan Brown'
  end

  it { should respond_to(:year) }

  it "#year returns an integer" do
    expect(@book.year).to match 2005
  end
  
  it { should respond_to(:fiction) }

  it "#fiction returns a boolean" do
    expect(@book.fiction).to match true
  end
  
  it { should respond_to(:user) }

  it "#user returns a string" do
    expect(Book.new).to respond_to(:user)
  end

end
