puts 'this is awesome!'
puts 'I m running a ruby app using Docker, kids!'
require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "5L4BATRo7SZJnnGmsxOR5Q"
  config.consumer_secret     = "xwAhsaoK0jPXiv8O7MhUiKxwID8qwz89DMxYmyQAAo"
  config.access_token        = "15396945-Fz9fVosY3JMKP1PfWJOfe7BjXXjyL1EoKsomqGme1"
  config.access_token_secret = "1ATA8FSMRaZDn5EPWQsjl4Oad8ofiz6uhcNnVebiE"
end

tweets = client.user_timeline("_sprconsulting")
puts tweets.first

