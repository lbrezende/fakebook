
require 'rufus/scheduler'
scheduler = Rufus::Scheduler.start_new

scheduler.every '10m' do
  require "net/http"
  require "uri"
  url = 'http://fakebook-leandro.herokuapp.com'
  Net::HTTP.get_response(URI.parse(url))
end
