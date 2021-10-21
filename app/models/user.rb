class User < ApplicationRecord
    after_create :welcome_send

    validates :name, presence: {message: ": Merci de mettre ton nom"}
    validates :first_name, presence: {message: ": Merci de mettre ton prénom"}
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: ": L'adresse email doit être valide"}, uniqueness: {message: ": Cette adresse email est déjà utilisé"}
    validates :payed, presence: {message: ": Merci de confirmer ta participation financière"}

    def welcome_send
        UserMailer.welcome_email(self).deliver_now
    end
end
