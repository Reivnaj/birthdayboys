class InscriptionsController < ApplicationController
    

    

    def new
        @user = User.new
    end

    def create
       @user = User.new(user_params)
       if @user.save
        redirect_to "https://lydia-app.com/collect/31121-25-ans-jb-thom/fr", notice: "Allééééé làà !"
       else
        render :new
       end 
    end

    private

    def user_params
        params.required(:user).permit(:name, :first_name, :email, :payed)
    end
end