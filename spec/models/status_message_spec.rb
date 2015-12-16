require 'rails_helper'

describe StatusMessage do
  describe '.last_ten' do
    it 'should return an empty enumerable when there aren\'t any messages' do
      expect(described_class.last_ten).to be_empty
    end
  end
end
