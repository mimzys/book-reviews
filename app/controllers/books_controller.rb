class BooksController < ApplicationController
  before_action :authorize_user, except: [:show, :index]

  def index
    @books = Book.paginate(page: params[:page], per_page: 10)
  end

  def show

  end

  def new
    if current_user
      @book = Book.new
      render :new
    else
      @books = Book.paginate(page: params[:page], per_page: 10)
      render :index
    end
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

  def authorize_user
    if !current_user
      flash[:notice] = "You must be signed in to add a book!"
    end
  end

end
