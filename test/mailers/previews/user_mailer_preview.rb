# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/audit_request
  def audit_request
  	user = User.first
    UserMailer.audit_request(user)
  end

end
