# class UserMailer < ApplicationMailer

#   # Subject can be set in your I18n file at config/locales/en.yml
#   # with the following lookup:
#   #
#   #   en.user_mailer.new_listing_notification.subject
#   #
#   def new_listing_notification
#     @greeting = "Hi"

#     mail to: "to@example.org"
#   end
# end

class UserMailer < ApplicationMailer
  default from: "l0c14pp@gmail.com"

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end

  def new_listing_notification(user_id)
    @user = User.find(user_id)
    mail(to: @user.email, subject: 'Loci listing sucessfully created')
  end
end