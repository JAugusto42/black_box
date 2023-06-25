# frozen_string_literal: true

require 'date'

require_relative "black_box/version"
require_relative "black_box/info"

module BlackBox
  class Error < StandardError; end

  class Log
    def self.info(message)
      Info.new(message).output
    end
  end
end
