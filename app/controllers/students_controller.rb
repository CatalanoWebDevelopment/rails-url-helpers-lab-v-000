class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]

  def index
    @students = Student.all
  end

  def show
    @student
  end

  def activate
    @student.update(active: !@student.active)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
