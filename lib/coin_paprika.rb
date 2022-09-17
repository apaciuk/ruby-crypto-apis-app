# frozen_string_literal: true

module Api 
    class CoinPaprika < Base
        def request 
            super(:get, url)
        end

        def parsed_response(response)
            response.first.dig('close')
        end

        def url 
            "https://api.coinpaprika.com/v1/coins/#{@options[:symbol]}-#{@options[:name]}/ohlcv/today"
        end
    end
end
