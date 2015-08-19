require 'rails_helper'

describe LearningMaterial, type: :model do

  context 'with valid data' do

    it 'has a valid factory' do
      expect(build(:learning_material)).to be_valid
    end

    it 'is valid with validated fields filled in' do
      learning_material = build(:learning_material)
      expect(learning_material).to be_valid
    end

    it 'is valid with blank non-validated fields' do
      learning_material = build(:learning_material, level: nil, description: nil)
      expect(learning_material).to be_valid
    end
  end


  context 'with invalid data' do

    it 'is invalid without a topic' do
      learning_material = build(:learning_material, topic: nil)
      expect(learning_material).not_to be_valid
      expect(learning_material.errors[:topic]).to include("can't be blank")
    end

    it 'is invalid without a source' do
      learning_material = build(:learning_material, source: nil)
      expect(learning_material).not_to be_valid
      expect(learning_material.errors[:source]).to include("can't be blank")
    end
  end
end
