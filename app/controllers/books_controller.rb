class BooksController < ApplicationController

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    
  end

  def create
    @book = Book.new(book_parmas)
    if @book.save
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
    
  end

  def edit
  end
  
  def update
    
  end
  
  def destroy
    
  end
  
  private
  
  def book_parmas
    params.require(:book).permit(:title,:body)
  end
  
end
