#!/usr/bin/env ruby

require 'httparty'
response = HTTParty.post('http://localhost:4567/turnovers  ', {
  :body => {
    "start_date"       => 2013,
    "end_date"         => 2015,
    "banking_passport" => {
      "hbci_version"     => "300",
      "host"             => "fints.comdirect.de/fints",
      "port"             => "443",
      "filter"           => "Base64",
      "country_code"     => "DE",
      "bank_number"      => "xx",
      "customer_id"      => "xx",
      "user_id"          => "xx",
      "account_number"   => "xx",
      "pin"              => "xx"
    }
  }.to_json,
  :headers => { 'Content-Type' => 'application/json' }
})
puts response.body
