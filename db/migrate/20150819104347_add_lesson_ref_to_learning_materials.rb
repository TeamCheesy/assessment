class AddLessonRefToLearningMaterials < ActiveRecord::Migration
  def change
    add_reference :learning_materials, :lesson, index: true, foreign_key: true
  end
end
