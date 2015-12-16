require 'rails_helper'

describe Status do
  describe '.current' do
    it 'should be true after a true status is created' do
      described_class.create(status: true)

      expect(described_class.current).to be true
    end

    it 'should be false after a false status is created' do
      described_class.create(status: false)

      expect(described_class.current).to be false
    end

    it 'should be true after a false status is created, then a true status' do
      described_class.create(status: false)
      described_class.create(status: true)

      expect(described_class.current).to be true
    end
  end
end
