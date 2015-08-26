class LearningMaterialsController < ApplicationController
  before_filter :get_lesson

  def index
    @learning_materials = @lesson.learning_materials
  end

  def new
    @learning_material = LearningMaterial.new
  end

  def create
    @learning_material = @lesson.learning_materials.build(learning_material_params)

    if @learning_material.save
      redirect_to [@lesson, @learning_material]
    else
      render :new
    end
  end

  def show
    @learning_material = @lesson.learning_materials.find(params[:id])
  end

  private
    def learning_material_params
      params.require(:learning_material).permit(:topic, :source, :description, :level)
    end

    def get_lesson
      @lesson = Lesson.find(params[:lesson_id])
    end
end
