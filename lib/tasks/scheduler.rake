desc "This task is called by the Heroku scheduler add-on to send out generic monthly reminders"
task :send_monthly_generic => :environment do
  ThingMailer.send_generic.deliver
end

desc "This task is called by the Heroku scheduler add-on to send out personalized monthly reminders"
task :send_monthly_personalized => :environment do
  ThingMailer.send_personalized
end
