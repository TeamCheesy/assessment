class LearningMaterial < ActiveRecord::Base
  validates :topic, :source,
            presence: true

  default_scope { order('created_at DESC') }
end
