class UserMailer < ApplicationMailer
    default from: "no-reply@jbnt.com"

    def welcome_email(user)

        @user = user

        mail(to: @user.email, subject: "Hissez haut !!!")

    end
end
