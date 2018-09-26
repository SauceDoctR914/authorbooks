class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @author = Author.find(params.require(:book).permit(:id)['id'])
    @book.authors.push(@author)
    @book.save
    redirect_to book_path(@book)
  end

  


end
