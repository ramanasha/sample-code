# Download the helper library from https://www.twilio.com/docs/ruby/install
require 'rubygems'
require 'twilio-ruby'

# Your Account Sid and Auth Token from twilio.com/console
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'
@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.messages
  .create(
     body: 'McAvoy or Stewart? These timelines can get so confusing.',
     from: '+15017122661',
     status_callback: 'http://requestb.in/1234abcd',
     to: '+15558675310'
   )

puts message.sid