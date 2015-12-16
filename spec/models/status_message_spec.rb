require 'rails_helper'

describe StatusMessage do
  describe '.last_ten' do
    it 'should return an empty enumerable when there aren\'t any messages' do
      expect(described_class.last_ten).to be_empty
    end

    it 'should return a message when one message is added' do
      described_class.create(message: "First status. Everything is A-OK")

      expect(described_class.last_ten.count).to eq 1
    end

    it 'should return eight messages when eight messages are added' do
      number_of_messages = 8

      number_of_messages.times do |i|
        described_class.create(message: "Test ##{i}")
      end

      expect(described_class.last_ten.count).to eq number_of_messages
    end

    it 'should return the most recent ten messages after eleven messages are added'
  end
end
