require './config/environment'
require 'sinatra'

require 'sinatra/flash'

class ApplicationController < Sinatra::Base
  enable :sessions
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "sneaker_secret"
  end

  get "/" do
    erb :welcome
  end

  helpers do 
    

  def logged_in?
    !!session[:user_id]
  end

  def current_user
    @user ||= User.find_by_id(session[:user_id]) if logged_in?
    end 
  end
end
