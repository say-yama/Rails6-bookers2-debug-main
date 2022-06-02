class SearchesController < ApplicationController
  before_action :authenticate_user!
  
  def search
    @range = params[:range]
    
   if @range == "User"
     @users = User.looks(params[:search],params[:word])
     @users.count
   else
     @books = Book.looks(params[:search],params[:word])
     @books.count
   end
  end
    
end
