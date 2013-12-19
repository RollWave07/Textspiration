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

time_in_float = Time.now.hour + (Time.now.min/60.to_f)
users = User.where(time: (time_in_float-0.4)..(time_in_float+0.4))

  users.each do |user|
      if user.time > (time_in_float - 0.4) && user.time < (time_in_float + 0.4)
        twilio_sid = ENV['TWILIO_SID']
        twilio_token = ENV['TWILIO_TOKEN']
        twilio_phone_number = ENV['TWILIO_PHONE_NUMBER']
        @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
        @twilio_client.account.sms.messages.create(
          :from => "+1#{twilio_phone_number}",
          :to => user.phone,
          :body => "This is a test text")
      end
    end
end

task :time => :environment do
  puts Time.now.in_time_zone("Central Time (US & Canada)").strftime("%I:%M%p")
end

# task :greet do
#   puts "hello"
# end

# task :env_test => :environment do
#  twilio_sid = ENV['TWILIO_SID']
#  twilio_token = ENV['TWILIO_TOKEN']
#  twilio_phone_number = ENV['TWILIO_PHONE_NUMBER']
#  puts "twilio_sid=#{twilio_sid}"
#  puts "twilio_token=#{twilio_token}"
#  puts "twilio_phone_number=#{twilio_phone_number}"
# end

    # messages_to_send = Message.where("sent= ? AND time <= ?", false, Time.now)
  # messages_to_send.each do |message|

  #   user = User.find(message.user_id)