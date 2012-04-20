class ThingMailer < ActionMailer::Base
  default :from => "adoptasiren@honolulu.gov"

  def reminder(thing)
    @thing = thing
    @user = thing.user
    mail(
      {
        :to => thing.user.email,
        :subject => ["Remember to listen", thing.name].compact.join(' '),
      }
    )
  end
end
