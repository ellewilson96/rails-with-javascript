class CoursesController < ApplicationController
    def index
        @courses = Course.all
    end

    def show
      @course = Course.find_by_id(params[:id])
    end

    def new
      @course = Course.new
    end

    def create
      @course = current_user.courses.build(course_params)
      if @course.save
        redirect_to course_path(@course)
      else
        render :new
      end
    end

    private

    def course_params
      params.require(:course).permit(:name, :description, :section)
    end
end
