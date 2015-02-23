require "rubygems"
require "twilio-ruby"

account_sid = "ACdb2bcc2384f38b6509c6f4cf4594f27f"
auth_token = "ba9df4bc9a7141e67b50df19ccf77099"

@client = Twilio::REST::Client.new "ACdb2bcc2384f38b6509c6f4cf4594f27f", "ba9df4bc9a7141e67b50df19ccf77099"

message = @client.account.messages.create(body: "You're awesome!",
    to: "+13314427386",
    from: "+17082942645") 

puts message.to

