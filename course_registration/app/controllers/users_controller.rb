class UsersController < ApplicationController

  def show
    @students = current_user.students
  end


end
