class StudentsController < ApplicationController

  def index
      @students = Student.all
      @grades = current_user.grades.all
      respond_to do |f|
        f.html
        f.json {render json: @students}
      end
  end

  def show
    @student = Student.find_by_id(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = current_user.students.build(student_params)
    if @student.save
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  def edit
    @student = Student.find_by_id(params[:id])
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :course_id)
  end


end
