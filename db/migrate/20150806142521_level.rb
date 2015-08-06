class Level < ActiveRecord::Migration
  def change
    add_column :learning_materials, :level, :string
  end
end
