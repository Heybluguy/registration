class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to students_path
  end

  def index
    @students = Student.all
  end


  def show
    @student = Student.find(params[:id])
  end



  private
    def student_params
      params.require(:student).permit(:name)
    end
end