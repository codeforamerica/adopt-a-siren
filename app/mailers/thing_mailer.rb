class ThingMailer < ActionMailer::Base
  default :from => "adoptasiren@honolulu.gov"

=begin
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
=end

  def send_reminder
    things = Thing.where("user_id IS NOT NULL")
    emails = (things.all.collect {|t| t.user.email}).join(", ")
    mail(:to => emails, :subject => "Please remember to listen for your adopted siren today. Mahalo!")
  end

end
