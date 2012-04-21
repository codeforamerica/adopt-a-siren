desc "This task is called by the Heroku scheduler add-on to send out weekly permit reports"
task :send_monthly_report => [:environment] do

  ThingMailer.reminder.deliver

end
                     l