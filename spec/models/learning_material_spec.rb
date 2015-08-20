require 'rails_helper'

describe LearningMaterial, type: :model do

  context 'with valid data' do

    it 'has a valid factory' do
      expect(build(:learning_material)).to be_valid
    end

    it 'is valid with validated fields filled in' do
      learning_material = build(:learning_material, topic: 'Mooie titel', source: 'Ruby Nuby Book')
      expect(learning_material).to be_valid
    end

    it 'is valid with blank non-validated fields' do
      learning_material = build(:learning_material, description: nil, level: nil)
      expect(learning_material).to be_valid
    end

    it { should belong_to(:lesson) }

      context 'with scope' do
        #not for daily behaviour, but f.e. when changing the dbase etc
        it 'should return the materials in the correct order' do
          @last = create(:learning_material, created_at: 1.day.ago)
          @first = create(:learning_material, created_at: 3.day.ago)
          expect(LearningMaterial.ordered.to_a).to eq([@last, @first])
        end
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


