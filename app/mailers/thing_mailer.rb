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
    mail(:bcc => emails, :subject => "Please remember to listen for your adopted siren at 11:45AM.", :body => "Aloha Kakahiaka!

You are receiving this message because you have adopted a siren on hnlsirens.herokuapp.com.

This is a reminder that at 11:45 a.m. today the monthly test of the Outdoor Siren Warning System and Live Audio Broadcast in conjunction with Hawaii State Civil Defense will be conducted.

For the purpose of this test you will hear a 45-second steady tone on all sirens. When you hear the steady tone in circumstances other than a test, turn to any radio or television station for essential emergency information and instructions.

During an actual emergency these broadcasts will be heard at frequent intervals and may become continuous if need be.

In addition, residents in areas surrounding Campbell Industrial Park, Honokai Hale, Makakilo, Kapolei Regional Park, Kapolei Golf Course, and the Coast Guard Station at Kalaeloa may also hear a “whooping” tone following the Siren Test. This “whooping” tone is a test of the Hazardous Materials (HAZMAT) Incident outdoor siren warning group that will be activated in the event of a HAZMAT incident.

Siren Malfunction: If the siren in your community does not sound or does not operate properly please call the Department of Emergency Management at 723-8960 to report it. You can also email the department at dem@honolulu.gov. With more than 170 outdoor warning sirens on Oahu we appreciate the public’s assistance in identifying problem units.

Siren Damage or Vandalism: You can help us to safeguard our Outdoor Siren Warning System. Please report any acts of vandalism, damages, or missing sirens or components to the Department of Emergency Management at 723-8960. You can also email the department at dem@honolulu.gov and include any images you may have of the siren in question. Any suspicious activity should be reported immediately to the Honolulu Police Department by calling 911.

On-line Siren Reporting: Residents now have the option of reporting malfunctioning or vandalized sirens on-line. Visit the City’s Siren Trouble Report page at http://www3.honolulu.gov/DEMSiren/ to file your report as well as upload pictures.

Mahalo!")
  end

end
        l