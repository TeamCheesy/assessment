class LearningMaterialsController < ApplicationController
  def index
    @learning_materials = LearningMaterial.all.order("created_at DESC")
  end

  def new
    @learning_material = LearningMaterial.new
  end

  def create
    @learning_material = LearningMaterial.new(learning_material_params)

    if @learning_material.save
      redirect_to @learning_material
    else
      render 'new'
    end
  end

  def show
    @learning_material = LearningMaterial.find(params[:id])
  end

  private
    def learning_material_params
      params.require(:learning_material).permit(:topic, :source, :description)
    end
end
