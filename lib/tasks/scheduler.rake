desc "This task is called by the Heroku scheduler add-on to send out monthly reminders"
task :send_monthly_reminder => :environment do

  ThingMailer.send_reminder.deliver

end
