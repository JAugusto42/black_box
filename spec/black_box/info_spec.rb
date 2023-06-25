# frozen_string_literal: true

RSpec.describe BlackBox::Info do
  context '.output' do
    let(:message) { 'test output' }

    it 'should output a log type info with a message' do
      output = described_class.new(message).output

      expect(output).to include(message)
    end
  end
end
