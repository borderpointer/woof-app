CarrierWave.configure do |config|

config.fog_credentials = {

    :provider                         => "Google",
    :google_storage_access_key_id     => Rails.application.secrets.google_access_key,
    :google_storage_secret_access_key => Rails.application.secrets.google_secret,

    }

    config.fog_directory = "woofwoof"

end
puts "================"
p ENV["GCS_ACCESS_KEY"]
puts "================"
p ENV["GCS_SECRET"]
puts "================"


p Rails.application.secrets.google_access_key
puts "================"