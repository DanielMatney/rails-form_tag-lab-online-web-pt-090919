class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    Student.create(title: params[:student][:first_name], description: params[:student][:last_name])
    student.save
    redirect_to student_path(student)
  end
end
