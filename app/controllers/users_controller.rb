class UsersController < ApplicationController
   
   def new
       @user = User.new
   end
   
   def create
        
        puts params
        @user = User.new(user_params)
        if @user.save
            redirect_to root_path
        end
       
   end
   
   private
   
    def user_params
        
        params.permit(:username, :email, :bio)
  end
end