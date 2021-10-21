class UserController < ApplicationController
    def index
        @user = User.all
    end

    def toggle_payed_status
        @user = User.find(params[:user_id])
        @user.toggle!(:payed)
    end

   
end
