class RostersController < ApplicationController
    def index
      @rosters = Roster.all
      @students = Student.all
    end

    def show
      @roster = Roster.find_by_id(params[:id])
      @students = Student.all
    end

    def enroll
      @roster = Roster.new
    end

    def new
      @user = current_user
      @roster = Roster.new
    end

    def create
      @roster = Roster.new(roster_params)
      if @roster.save
        redirect_to user_path(current_user.id)
      else
        render :'/courses/enroll'
      end
    end

    private

    def roster_params
      params.require(:roster).permit(:course_id, :teacher_id, :student_id)
    end
end
