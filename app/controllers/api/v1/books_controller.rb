class Api::V1::BooksController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }


  # def show
  #   render json: Book.find(params[:id]), serializer: BookShowSerializer;
  #   @reviews = Book.find(params[:id]);
  # end
  def show
  book = Book.find(params[:id])
  render json: book
  end

end
