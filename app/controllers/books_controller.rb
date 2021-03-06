class BooksController < ApplicationController
  before_action :get_book, only: [:show, :edit, :update, :destroy]

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book)
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  def edit
  end

  def index
    @books = Book.order(id: :desc).page(params[:page])
    @book = Book.new
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
