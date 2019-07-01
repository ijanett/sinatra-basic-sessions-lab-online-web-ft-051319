require_relative 'config/environment'

class App < Sinatra::Base

    enable :sessions, "secret"

    get '/' do
        erb :index
    end

    post '/checkout' do
        session[:item] = params[:item]
    end
end