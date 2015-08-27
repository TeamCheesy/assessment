FactoryGirl.define do
  factory :learning_material do
    topic 'Funny Lesson'
    source 'Book in the closet'
    description 'Very funny lesson on a great subject'
    level 'Basic'
    association :lesson, factory: :lesson
  end
end
