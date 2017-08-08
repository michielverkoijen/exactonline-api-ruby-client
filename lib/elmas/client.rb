require "faraday"

module Elmas
  class Client < API
    def connection
      Faraday.new do |faraday|
        faraday.adapter Faraday.default_adapter
        faraday.response :logger, ::Logger.new(STDOUT), bodies: true
      end
    end
  end
end
