# crypto-apis  (wrapper for various crypto api requests)

## Setup

$ bundle install

## Test in console pry

1. In pry console - require './api'

2. Then run:  api = Api::Wrapper.new({name: 'bitcoin', symbol: 'btc'})

3. Finally, run the request with the individual crypto api exact file name (without extension) as needed.

examples -  api.coin_gecko, api.coin_paprika, api.coin_cap, api.crypto_compare


### Expand for further use.
