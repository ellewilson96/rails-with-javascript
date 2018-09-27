class UsersController < ApplicationController

  def show
    @student = Student.find_by(params[:student_id])
    @courses = Course.all
  end


end
