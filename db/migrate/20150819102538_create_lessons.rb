class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :chapter
      t.string :category
      t.text :goal

      t.timestamps null: false
    end
  end
end
