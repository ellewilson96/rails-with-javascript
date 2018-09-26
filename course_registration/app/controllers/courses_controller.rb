class CoursesController < ApplicationController
    def index
      @courses = Course.all
      @students = Student.all
    end

    def show
      @course = Course.find_by_id(params[:id])
    end

    def enroll
      @roster = Roster.new
    end

    def new
      @user = current_user
      @course = Course.new
    end

    def create
      @course = Course.new(course_params)
      if @course.save
        Roster.create(:user_id => (current_user.id), :course_id => (@course.id))
        redirect_to user_path(current_user.id)
      else
        render :new
      end
    end

    private

    def course_params
      params.require(:course).permit(:name, :description, :section)
    end
end
