
class SneakersController < ApplicationController
      
 
    get '/sneakers' do 
        if logged_in?  
            @user = current_user
            @sneakers = @user.sneakers
            erb :"sneakers/index"
        else 
            Sneaker.authenticate(params[:brand])  
            Sneaker.authenticate(params[:style])  
            Sneaker.authenticate(params[:name])  
            redirect '/'
        end
    end


    get '/sneakers/new' do 
        if logged_in?
        
        erb :"/sneakers/new"
        else 
            redirect :"/"
        end 
    end


    post '/sneakers' do 
        sneaker = Sneaker.new(params[:sneaker])
        sneaker.user_id = current_user.id
            if sneaker.save
                redirect "/sneakers/#{sneaker.id}"
            else 
                redirect "/sneakers/new"
            end 
    end 


    get '/sneakers/:id' do
        find_sneaker
        @user = current_user
            if @sneaker != nil
            erb :"sneakers/show"
            else
            redirect '/sneakers' 
            end
    end


    get '/sneakers/:id/edit' do 
        find_sneaker
        if validate_user
            @sneaker
                erb :"sneakers/edit" 
        else
            redirect '/sneakers/:id'
        end
    end


    patch '/sneakers/:id' do 
        find_sneaker
        validate_user
            if @sneaker.update(params[:sneaker])
                redirect "/sneakers"
            else
            redirect "/sneakers/#{sneaker.id}/edit"
            end
    end

    delete '/sneakers/:id' do
        find_sneaker
            if validate_user
                @sneaker.destroy 
                redirect "/sneakers"
            else
            redirect "/sneakers"
            end
    end

   

private 

    def find_sneaker
        @sneaker = Sneaker.find_by_id(params[:id])
    end

    def validate_user
        @sneaker.user_id == current_user.id
    end

end