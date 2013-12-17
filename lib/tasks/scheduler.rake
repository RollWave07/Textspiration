# scheduler.rake

# desc "This task is called by the Heroku scheduler add-on"
# task :update_feed => :environment do
#   puts "Updating feed..."
#   NewsFeed.update
#   puts "done."
# end

# task :send_reminders => :environment do
#   User.send_reminders
# end

desc "Attemping to use the scheduler to send a text at a certain time based on a user"

task :text => :environment do

  User.all.each do |user|
      if user.time == Time.now.strftime("%I:%M%p")
        twilio_sid = ENV['TWILIO_SID']
        twilio_token = ENV['TWILIO_TOKEN']
        twilio_phone_number = ENV['TWILIO_PHONE_NUMBER']
        @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
        @twilio_client.account.sms.messages.create(
          :from => "+1#{twilio_phone_number}",
          :to => user.phone,
          :body => "This is a test set for 7:30 PM")
      end
    end
end

task :greet do
  puts "hello"
end

    # messages_to_send = Message.where("sent= ? AND time <= ?", false, Time.now)
  # messages_to_send.each do |message|

  #   user = User.find(message.user_id)