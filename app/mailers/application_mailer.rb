class ApplicationMailer < ActionMailer::Base
  default from: 'no-reply@nomsterapp.com'
  layout 'mailer'
  
  def comment_added(comment)
    @place = comment.place
    @place_owner = @place.user
    mail(to: @place_owner.email,
         subject: "A comment has been added to #{@place.name}")
  end
end
