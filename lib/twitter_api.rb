class TwitterApi
  def self.our_public_tweets
    client.user_timeline('grahamplata', count: 1, exclude_replies: true, include_rts: false)
  end

  def self.client
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key = 'wAfsdHqjy0LH4fv9McL5tnM3g'
      config.consumer_secret = '49Di7KrmSd9N04Ejh26BFalVSySQzWx0MoMCMHoZy7YT3iE6Zp'
    end
  end
end
