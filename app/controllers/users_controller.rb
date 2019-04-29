# frozen_string_literal: true

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login(params[:email], params[:password])
      flash[:success] = "Welcome! You have signed up successfully"
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def user_params
    params.permit(:email, :password, :password_confirmation)
  end
end