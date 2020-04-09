class UsersController < ApplicationController
    
    get '/user' do 
            erb :"user/newuser"
        end

     
    post '/user' do 
      user = User.create(params[:user])
          if user.valid?
             user.save 
             session["user_id"] = user.id
             redirect "/sneakers"
           else 
             redirect "/user"
           end
    end
end