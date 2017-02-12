require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  let(:valid_attributes) do
    {
      title: "Angels and Demons",
      author: "Dan Brown",
      year: 2005,
      fiction: true
    }
  end

  let(:invalid_attributes) do
    {
      title: nil,
      author: nil,
      year: nil,
      fiction: true
    }
  end
  
  describe "basic listing, viewing and editing" do
    let(:book) { Book.create!(valid_attributes) }

    it "lists all songs" do
      get :index
      expect(assigns(:books)).to eq([book])
    end

    it "views a single book" do
      #get :show, { id: book.id }
      get :show, params: { id: book.id }
      expect(assigns(:book)).to eq(book)
    end

    it "fetches a book for editing" do
      #get :edit, { id: book.id }
      get :edit, params: { id: book.id }
      expect(assigns(:book)).to eq(book)
    end
  end

  context "creating a valid book" do
    before { post(:create, { book: valid_attributes }) }

    it "creates a new Book" do
      expect(Book.count).to eq(1)
    end

    it "assigns and persists new Book" do
      expect(assigns(:book)).to be_a(Book)
      expect(assigns(:book)).to be_persisted
    end

    it "redirects to the created book" do
      expect(response).to redirect_to(Book.last)
    end
  end

  context "creating an invalid book" do
    before { post(:create, { book: invalid_attributes}) }

    it "has not been persisted" do
      expect(assigns(:book)).to be_new_record
    end

    it "re-renders the template" do
      expect(response).to render_template("new")
    end
  end

  context "updating a book with valid data" do
    let(:new_attributes) do
      { title: "Angels & Demons" }
    end
    let(:book) { Book.create!(valid_attributes) }

    before do
      patch :update, { id: book.id, book: new_attributes }
    end

    it "updates the book" do
      book.reload
      expect(book.title).to eq("Angels & Demons")
    end

    it "redirects to the book" do
      expect(response).to redirect_to(book)
    end
  end

  context "updating a book with invalid data" do
    let(:book) { Book.create!(valid_attributes) }
    before do
      patch :update, { id: book.id, book: invalid_attributes }
    end

    it "does not persist changes" do
      expect(book.title).to eq("Angels and Demons")
    end

    it "re-renders the 'edit' template" do
      expect(response).to render_template("edit")
    end
  end

  context "destroying a book" do
    let(:song) { Book.create!(valid_attributes) }
    before do
      delete :destroy, { id: book.id }
    end

    it "destroys the requested book" do
      expect(Book.count).to eq(0)
    end

    it "redirects to the books list" do
      expect(response).to redirect_to(books_url)
    end
  end
end
