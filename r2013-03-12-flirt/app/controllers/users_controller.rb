class UsersController < ApplicationController
  def new
    @User = User.new
  end

  def create
    User.create(params[:user])
  end
end