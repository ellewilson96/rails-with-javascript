class CoursesController < ApplicationController
  before_action :set_course

    def index
      @courses = Course.all
      respond_to do |f|
        f.html
        f.json {render json: @courses}
      end
    end

    def new
      @course = Course.new
    end

    def create
      @course = Course.new(course_params)
      if @course.save
        flash[:notice] = 'Student record was successfully created.'
        redirect_to user_path(current_user.id)
      else
        render :new
      end
    end

    def show
      respond_to do |f|
        f.html
        f.json {render json: @course}
      end
    end

  def edit
    @course = Course.find(params[:id])
  end

  def update
  @course = Course.find(params[:id])

  if @course.update_attributes(course_params)
    flash[:notice] = 'Course was successfully updated.'
    redirect_to(@course)
  else
    render :action => "edit"
  end
end

  def save
        @course = Course.find(params[:id])
        @student = Student.find(params[:course])
        if params[:show] == "true"
    @course.courses << @student
  else
    @course.courses.delete(@student)
  end
  @course.save!
  render :nothing => true
end

    private

    def course_params
      params.require(:course).permit(:name, :description, :section)
    end

    def set_course
      @course = Course.find_by_id(params[:id])
    end
end
