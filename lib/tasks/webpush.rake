require "uri"
require "net/http"
require "json"

params = {"app_id" => ENV['ONESIGNAL_APP_ID'],
          "contents" => {"en" => "English Message"},
          "included_segments" => ["All"]}
uri = URI.parse('https://onesignal.com/api/v1/notifications')
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true

request = Net::HTTP::Post.new(uri.path,
                              'Content-Type'  => 'application/json',
                              'Authorization' => "Basic NGEwMGZmMjItY2NkNy0xMWUzLTk5ZDUtMDAwYzI5NDBlNjJj")
request.body = params.to_json
response = http.request(request) 
puts response.body

