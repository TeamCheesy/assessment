class LearningMaterialsController < ApplicationController
  before_filter :get_lesson

  def index
    @learning_materials = LearningMaterial.all
  end

  def new
    @learning_material = LearningMaterial.new
  end

  def create
    @learning_material = LearningMaterial.new(learning_material_params)

    if @learning_material.save
      redirect_to @learning_material
    else
      render :new
    end
  end

  def show
    @learning_material = LearningMaterial.find(params[:id])
  end

  private
    def learning_material_params
      params.require(:learning_material).permit(:topic, :source, :description, :level)
    end

    def get_lesson
      @lesson = Lesson.find(params[:lesson_id])
    end
end
