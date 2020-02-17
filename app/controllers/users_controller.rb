class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]

  def new
  end

  def create
    puts "$" * 60
    puts "ceci est le contenu de params :"
    puts params
    puts "$" * 60
    User.create(first_name: params[:user_name], password: params[:password])
    redirect_to '/welcome'
  end

  def show
    @author = User.find(params[:id])
  end
end
