class UserMailer < ActionMailer::Base
  default from: "from@example.com"


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.audit_request.subject
  #
  # def audit_request
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end

  def audit_request(user)
    @greeting = "Hi"
    @user = user
    mail to: user.email, subject: "audit request"
  end


end
