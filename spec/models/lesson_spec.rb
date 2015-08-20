require 'rails_helper'

describe Lesson, type: :model do


  context 'with valid data' do

    it 'has a valid factory' do
      expect(build(:lesson)).to be_valid
    end

    it 'is valid with validated fields filled in' do
      lesson= build(:lesson, title: 'Mooie titel')
      expect(lesson).to be_valid
    end

    it 'is valid with blank non-validated fields' do
      lesson = build(:lesson, chapter: nil, category: nil, goal: nil)
      expect(lesson).to be_valid
    end

    it { should have_many(:learning_materials) }
    it { should have_many(:learning_materials).dependent(:destroy) }
    
  end


  context 'with invalid data' do

    it 'is invalid without a title' do
      lesson = build(:lesson, title: nil)
      expect(lesson).not_to be_valid
      expect(lesson.errors[:title]).to include("can't be blank")
    end
  end

end