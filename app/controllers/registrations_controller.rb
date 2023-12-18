# frozen_string_literal: true

class RegistrationsController < ApplicationController
  def new
    @user = User.new #using instance variable to pass data to view
  end
end
