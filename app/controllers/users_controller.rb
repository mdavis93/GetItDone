class UsersController < ApplicationController
  def show
    @user = current_user
    @username = @user.email.slice(0..@user.email.index('@') - 1).capitalize if current_user
  end
end
