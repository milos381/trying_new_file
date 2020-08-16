require "trying_new_file/version"

class TryingNewFile

require 'net/http'
require 'json'

# Setting URL
url = "https://prime.exchangerate-api.com/v5/33abda6f0da266a7c858930b/latest/USD"
uri = URI(url)
response = Net::HTTP.get(uri)
response_obj = JSON.parse(response)

# Getting a rate
rate = response_obj['conversion_rates']['EUR']
							
end
