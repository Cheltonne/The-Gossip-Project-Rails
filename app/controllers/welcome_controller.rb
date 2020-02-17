class WelcomeController < ApplicationController
  def show
    @name = User.find(params[:id]).first_name
    #@names = User.find(params[:id].to_i + 10).first_name  
  end
end