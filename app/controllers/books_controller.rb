class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
  end
  
  def new
  end
  
  def create
    
  end

  def edit
  end
end
