require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "047ec782711c2713926ec7be903140bc8f858aad6611a31062544f598a6479fdd6f26a76c851d7eb8e67961a19a20c05c27e520e5fd21d50867c787c1026eab3"
      end

    get '/' do
        erb :index
    end

    post '/checkout' do
        session[:item] = params[:item]
        @session = session
        erb :checkout
    end


end