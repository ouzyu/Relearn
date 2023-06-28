class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @range = params[:range]
    @word = params[:word]
    if @range == "User"
      @users = User.looks(params[:search], @word)
    elsif @range == "Book"
      @books = Book.looks(params[:search], @word)
    end
  end
end
