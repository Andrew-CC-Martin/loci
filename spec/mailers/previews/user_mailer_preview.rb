# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/new_listing_notification
  def new_listing_notification
    UserMailerMailer.new_listing_notification
  end

  def sample_mail_preview
    UserMailer.sample_email(User.first)
  end

end
