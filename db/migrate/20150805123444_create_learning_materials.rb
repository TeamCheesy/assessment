class CreateLearningMaterials < ActiveRecord::Migration
  def change
    create_table :learning_materials do |t|
      t.string :topic
      t.string :source
      t.text :description

      t.timestamps null: false
    end
  end
end
