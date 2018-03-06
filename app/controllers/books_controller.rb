class BooksController < ApplicationController
  before_action :get_book, only: [:show, :edit, :update]

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path
  end

  def destroy
  end

  def edit
  end

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def show
  end

  def update
    @book.update(book_params)
    redirect_to book_path(@book)
  end

  private

    def book_params
      params.require(:book).permit(:title, :comment)
    end

    def get_book
      @book = Book.find(params[:id])
    end
end
