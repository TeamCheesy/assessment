class LearningMaterial < ActiveRecord::Base
  belongs_to :lesson

  validates :topic, :source,
            presence: true

  scope :ordered, -> { order('created_at DESC') }
end
