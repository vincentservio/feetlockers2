class SessionController < ApplicationController

  get '/login' do 
    erb :"/session/login"
end

post '/login' do 
  user = User.find_by(email:params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect '/sneakers'
  else 
       
    redirect '/login'
  end 
end

get '/logout' do
  session.clear
  redirect '/'
end


end
