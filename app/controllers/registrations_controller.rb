# frozen_string_literal: true

class RegistrationsController < ApplicationController
  def new
    @user = User.new #using instance variable to pass data to view
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: "Successfully created account!"
    else
      render :new #render new.html.erb
    end
  end
  private
  def user_params
    #only allow email and password, password confirmation
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
