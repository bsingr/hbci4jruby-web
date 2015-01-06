module Hbci4jruby
  module Web
    class Turnovers < ::Sinatra::Base
      post('/turnovers') do
        begin
          data = ::JSON.parse request.body.read
          halt 'Please provide banking_passport' unless data["banking_passport"]
          halt 'Please provide start_date' unless data["start_date"]
          halt 'Please provide end_date' unless data["end_date"]
          banking_passport = Hbci4jruby::BankingPassport.new
          banking_passport.attributes = data["banking_passport"]
          turnover = Hbci4jruby::Turnover.new
          result = turnover.list(banking_passport, {
            'start_date' => Time.new(data["start_date"]),
            'end_date'   => Time.new(data["end_date"])
          })
          JSON.dump(result)
        rescue => e
          error = {
            :message => e.message,
            :inspect => e.inspect
          }
          halt error.to_json
        end
      end
    end
  end
end
