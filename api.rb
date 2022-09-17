# frozen_string_literal: true
require './lib/base'
require './lib/coin_gecko'
require './lib/coin_paprika'
require './lib/coin_cap'
require './lib/crypto_compare'

module Api 
    class Wrapper < Base 
        %w[
            coin_gecko
            coin_paprika
            coin_cap
            crypto_compare
        ].each do |api|
            define_method (api.to_sym) do 
                Object.const_get("Api::#{klassify(api)}").new(@options).request
            end
        end 
        
        # Convert the string to a class name
        def klassify(name)
            name.split('_').collect(&:capitalize).join
        end
    end
end
