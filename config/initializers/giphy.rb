Giphy::Configuration.configure do |config|

  config.version = nil
  config.api_key = Rails.application.secrets.giphy_access_key

end