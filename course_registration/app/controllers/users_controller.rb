class UsersController < ApplicationController

  def show
    @rosters = current_user.rosters
    @student = Student.find_by(params[:student_id])
  end


end
