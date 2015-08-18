class LearningMaterial < ActiveRecord::Base
  validates :topic,
            presence: true

  default_scope { order('created_at DESC') }
end
