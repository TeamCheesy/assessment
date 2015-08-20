class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def new
    @lesson = Lesson.new
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def create
    @lesson = Lesson.new(lesson_params)
    redirect_to @lesson
  end

  def update
    @lesson = Lesson.find(params[:id])
    redirect_to @lesson
  end

  private
    def lesson_params
      params.require(:lesson).permit(:title, :chapter, :category, :goal)
    end
end
