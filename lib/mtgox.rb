#!/usr/bin/env ruby
#
# Get ticker data from Mt. Gox
#

require 'rubygems'
require 'json'
require 'httpclient'

class Mtgox
    def initialize
    end

    def ticker
        client = HTTPClient.new
        client.ssl_config.verify_mode = OpenSSL::SSL::VERIFY_NONE

        JSON.parse(client.get_content("https://mtgox.com/code/data/ticker.php"))["ticker"]
    end
end
