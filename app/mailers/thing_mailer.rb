class ThingMailer < ActionMailer::Base

  def send_personalized
    if ENV.include? 'FORCE_EMAIL' or ['2012-04-27', '2012-05-01', '2012-06-01', '2012-07-02', '2012-08-01', '2012-09-04', '2012-10-01', '2012-11-01', '2012-12-03'].include? Date.current.to_s
      things = Thing.where(:thing_type => 1).joins(:users)
      
      things.each do |t|
        t.users.each do |u|
          emails = u.email
          print emails
          @thing_name = t.name
          @thingid = t.id
          @userid = u.id
          mail(:from => "dem@honolulu.gov", :to => emails, :subject => "Please remember to listen for your adopted siren today at 11:45AM").deliver
        end
      end      
    else
      print "skipping"
    end
    
  end

  def send_stream_signup (user)
    mail(:from => "stormwaterhonolulu@gmail.com", :to => user.email, :subject => "Thanks for adopting a stream!").deliver
  
  end
  
end
