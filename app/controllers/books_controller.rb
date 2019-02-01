class BooksController < ApplicationController

  def index
    @books = Book.paginate(page: params[:page], per_page: 10)
  end

  def show
    
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book added successfully!"
      redirect_to @book
    else
      flash[:error] = @book.errors.full_messages.join(". \n")
      render :new
    end
  end

  private

  def book_params
    params.require(:book).permit(:name, :author, :publication_date, :description, :isbn)
  end

end
