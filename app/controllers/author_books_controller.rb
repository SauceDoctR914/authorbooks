class AuthorBooksController < ApplicationController
  def destroy
    @author_book = AuthorBook.find(params[:id])
    @book = Book.find(@author_book.book_id)
    @author_book.destroy
    redirect_to book_path(@book)
  end
end
