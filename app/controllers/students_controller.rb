class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate
    set_student.active = true
    set_student.update
    set_student.save
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
