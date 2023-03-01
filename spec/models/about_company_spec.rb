require 'rails_helper'

RSpec.describe AboutCompany, type: :model do
  it 'associations' do 
    it { should have_one_attached(:image1) }
    it { should have_one_attached(:image2) }
    it { should have_one_attached(:image3) }
    it { should have_one_attached(:image4) }
  end
end
