class UserMailer < ApplicationMailer
    default from: "birthdayboys25@gmail.com"

    def welcome_email(user)

        @user = user

        mail(to: @user.email, subject: "Hissez haut !!!")

    end
end
