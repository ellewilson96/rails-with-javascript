class GradesController < ApplicationController

  def index
    @student = Student.find_by_id(params[:student_id])
    @grades = Grade.all
  end
  def show
  end

  def new
  @student = Student.find_by_id(params[:student_id])
  @grade = @student.grades.build
  end

  def create
    @grade = current_user.grades.build(grade_params)
    @grade.student = Student.find_by_id(params[:student_id])
    if @grade.save
      redirect_to students_path
    else
      render :new
    end
  end

  def edit
    @grade = Grade.find(params[:id])
end

  def update
    @url = student_grade_path
    @grade = Grade.find(params[:id])
    if @grade.user_id = current_user.id
      @grade.update_attributes(grade_params)
      @grade.save
      redirect_to students_path
    else
      @grade.errors.add(:base, "You must be the original creator to make changes
      to this grade.")
      render :edit
    end
  end

  private

  def grade_params
    params.require(:grade).permit(:student_id, :user_id, :score, :behavior)
  end

  def set_grade
    @grade = Grade.find(params[:id])
  end

end
