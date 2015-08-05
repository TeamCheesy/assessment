class LearningMaterial < ActiveRecord::Base
  validates :topic, :source,  presence: true,
                              length: { minimum: 5 }
end
