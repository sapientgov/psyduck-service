# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Rails.application.configure do
  # CORS headers for REST services
  config.action_dispatch.default_headers.merge!({
	"Access-Control-Allow-Methods" => "GET,POST,PUT,DELETE,OPTIONS",
    "Access-Control-Allow-Origin" => "*",
    "Access-Control-Request-Method" => "*"
  })
end

