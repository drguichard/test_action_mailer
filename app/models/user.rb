class User < ApplicationRecord
    after_create :welcome_send #juste après l'inscription en base d'un nouvel utilisateur, d'appeler la méthode d'instance welcome_send

    def welcome_send #exécute NOW la méthode welcome_email située dans le mailer UserMailer
      UserMailer.welcome_email(self).deliver_now
    end
  
end
