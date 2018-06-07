class SessionController < ApplicationController
  before_action :session_check, only: [:new]
  
  def new
  end
  
  def create
    # 학번 중복검사
    
    @user = User.new
    @user.user_major = params[:user_major]
    @user.user_number = params[:user_number]
    @user.user_name = params[:user_name]
    
    if(@user.save)
      session[:current_user_number] = params[:user_number]
      session[:current_user_major] = params[:user_major]
      session[:current_user_name] = params[:user_name]
      session[:answer] = 0
      session[:wrong] = ""
      session[:res] = 0
      redirect_to '/home/scenario0'
    else
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to '/'
  end
  
  private
  def session_check
    if !(session[:current_user_number].nil?)
      reset_session
    end
  end
end