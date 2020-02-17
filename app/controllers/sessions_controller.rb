class SessionsController < ApplicationController
  
  skip_before_action :authorized, only: [:new, :create, :welcome]

  def index
  end

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
       session[:user_id] = @user.id
       redirect_to sessions_path
    else
       redirect_to new_session_path
    end
  end

  def login
  end

  def welcome
    session[:salut]="Igarapappa"
  end

  def page_requires_login
  end

  def destroy
    session.delete(:user_id)    
    session[:user_id] = nil
    redirect_to root_path
  end
end