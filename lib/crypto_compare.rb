# frozen_string_literal: true

module Api 
    class CryptoCompare < Base
        def request 
            super(:get, url)
        end

        def parsed_response(response)
            response.dig('USD')
        end

        def url 
            "https://min-api.cryptocompare.com/data/price?fsym=#{@options[:symbol]}&tsyms=USD"
        end
    end
end
