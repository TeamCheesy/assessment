class LearningMaterial < ActiveRecord::Base
  validates :topic, :source,  presence: true,
                              length: { minimum: 5 }

  default_scope { order('created_at DESC') }
end
