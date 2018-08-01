class UsersController < ApplicationController
   
   before_action :set_new, only: [:new, :new2, :new3]
   before_action :set_create, only: [:create, :create2]
   
   def new
   end
   
   def new2
   end
   
   def new3
   end
   
   def info
       @user = User.last
   end
   
   def create
   end
   def create2
   end
   
   def create3
       
       @user = User.new(user_params3)
        if @user.save
            redirect_to info_path
        end
   end
   
   private
   

    def set_new
         @user = User.new
    end
    
    def set_create
          
       @user = User.new(user_params)
        if @user.save
            redirect_to info_path
        end
        
    end
   
    def user_params
        
         params.permit(:username, :email, :bio)
  end
  
  def user_params3
      
      params.require(:user).permit(:username, :email, :bio)
  end

end