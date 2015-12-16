require 'rails_helper'

describe StatusUpdater do
  describe '#update' do
    it 'should add a new status when given a status' do
      described_instance = described_class.new(status: true)

      expect { described_instance.update }.to change { Status.count }.by(1)
    end

    it 'should make the current status true when give a status of true' do
      described_instance = described_class.new(status: true)
      described_instance.update

      expect(Status.current).to be true
    end

    it 'should make the current status false when give a status of false' do
      described_instance = described_class.new(status: false)
      described_instance.update

      expect(Status.current).to be false
    end

    it 'should not change the status when given no status and the status was true' do
      described_instance = described_class.new
      described_instance.update

      expect { described_instance.update }.to_not change { Status.count }
    end

    it 'should add a status message when created with one' do
      described_instance = described_class.new(status_message: "Still working on it")

      expect { described_instance.update }.to change { StatusMessage.count }.by(1)
    end

    it 'should not change the status message when given no status message' do
      described_instance = described_class.new

      expect { described_instance.update }.to_not change { StatusMessage.count }
    end

    it 'should not change the status message when given just a status' do
      described_instance = described_class.new(status: true)

      expect { described_instance.update }.to_not change { StatusMessage.count }
    end

    it 'should not change the status when given just a status message' do
      described_instance = described_class.new(status_message: "How about this new message?!")

      expect { described_instance.update }.to_not change { Status.count }
    end
  end
end
