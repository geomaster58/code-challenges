class ApiConnecter
  attr_accessor :title, :description, :url

  def initialize(title, description, url)
    @title = title
    @description = description
    @url = url
  end
end



class SmsConnector < ApiConnecter
  def send_sms
    `curl -X POST -d "notification[title]=#{@title}" -d "notification[url]=http://edutechional-resty.herokuapp.com/posts/1" "#{@url}"`
  end
end

class PhoneConnector < ApiConnecter
  def send_phonecall
    puts "Phone"
  end
end

class MailConnector < ApiConnecter
  def send_email
    puts "Email"
  end
end

hey = SmsConnector.new(title: "My title", description: "Best description",  url: "http://edutechional-smsy.herokuapp.com/notifications").send_sms

