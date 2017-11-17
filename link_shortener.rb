require 'sinatra'
 
get '/:url' do
  redirect "http://" + ShortURL.read(params[:url])
end
 
get '/' do
  "Send a POST request to register a new URL."
end
 
post '/' do
  ShortURL.save(generate_short_url, params[:url])
 
  "New URL added: localhost:4567/#{generate_short_url}\n"
end

LETTERS = Array('a'..'z')
 
def generate_short_url
  Array.new(6) { LETTERS.sample }.join
end

class ShortURL
  def self.save(code, original)
    store.transaction { |t| t[code] = original }
  end
 
  def self.read(code)
    store.transaction { |t| t[code] }
  end
 
  def self.store
    @store ||= PStore.new("short_urls.db")
  end
end