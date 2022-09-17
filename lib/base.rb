# frozen_string_literal: true
require 'httparty'
module Api 
    class Base  
        attr_accessor :options

        def initialize(options)
            @options = options
        end 

        def request(type, url, options = {})
            HTTParty.send(type, url, options).yield_self do |response|
                # Parse the response
                parsed_response(response).to_f
            end
        end 

        def parsed_response(response)
            "#{__method__}" 
        end
    end
end
