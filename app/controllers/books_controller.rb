class BooksController < ApplicationController


  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @authors = @book.authors
    @publisher = Publisher.new
    @all_authors = Author.all
  end


end
