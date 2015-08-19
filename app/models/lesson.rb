class Lesson < ActiveRecord::Base
  has_many :learning_materials, dependent: :destroy

  validates :title, presence: true

end
