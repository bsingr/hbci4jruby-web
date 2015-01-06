require File.join(File.dirname(__FILE__), '..', 'web')

module Hbci4jruby
  module Web
    class App < ::Sinatra::Base
      use Hbci4jruby::Web::Turnover

      run! if app_file == $0
    end
  end
end
