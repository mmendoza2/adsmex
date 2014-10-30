class UserMailer < ActionMailer::Base
  default from: "mmendoza2@adsmex.com"

  def login_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: 'mmendoza2@adsmex.com', subject: @user.name)
  end
end
