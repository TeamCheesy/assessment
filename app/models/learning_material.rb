class LearningMaterial < ActiveRecord::Base
  belongs_to :lesson
  validates :topic, :source,
            presence: true


  default_scope { order('created_at DESC') }
end
