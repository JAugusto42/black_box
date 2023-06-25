# frozen_string_literal: true

module BlackBox
  class Info
    attr_reader :message

    def initialize(message)
      @message = message
    end

    def output
      "#{DateTime.now} || LOG INFO -> #{message}"
    end
  end
end
