require 'rails_helper'

RSpec.describe Image do
  describe 'association' do
    describe '#file' do
      subject { image.file.attached? }
      context 'attached' do
        let(:image) { build(:image, :with_file) }

        it { is_expected.to be_truthy }
      end

      context 'not attached' do
        let(:image) { build(:image) }

        it { is_expected.to be_falsy }
      end
    end
  end 
end
