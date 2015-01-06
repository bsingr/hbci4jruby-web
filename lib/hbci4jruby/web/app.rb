require File.join(File.dirname(__FILE__), '..', 'web')

module Hbci4jruby
  module Web
    class App < ::Sinatra::Base
      use Hbci4jruby::Web::Turnovers

      set :public_folder, File.join(File.dirname(__FILE__), '..', '..', '..', 'public')

      get '/' do
        send_file File.join(settings.public_folder, 'index.html')
      end

      run! if app_file == $0
    end
  end
end
