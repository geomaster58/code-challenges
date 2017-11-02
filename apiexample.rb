require 'rubygems'
require 'httparty'


class EdutechionalResty
  include HTTParty
  base_uri "edutechional-resty.herokuapp.com/"


  def posts
  
    self.class.get('/posts.json')
  end
end

edu = EdutechionalResty.new

edu.posts.each do |posts|
  p "Title: #{posts['title']} | Description: #{posts['description']}"
end
# puts edu

# response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')

# puts response.profile_image

# class StackExchange
#   include HTTParty
#   base_uri 'api.stackexchange.com'

#   def initilaize (service, page)
#     @options = { query: {site: service}}
#   end


#   def questions
#     self.class.get('/2.2/questions', @options)
#   end

#   def users
#     self.class.get('/2.2/users', @options)
#   end
# end



# stack_exchange = StackExchange.new('stackoverflow', 1)

# puts stack_exchange.users