class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    # @student = Student.new
  end

  def create
    # Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    # redirect_to new_student_path(request.params)
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path(@student)

  end

end
