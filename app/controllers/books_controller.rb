class BooksController < ApplicationController
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
  end

  private

    def book_params
      params.require(:book).permit(:title, :comment)
    end
end
