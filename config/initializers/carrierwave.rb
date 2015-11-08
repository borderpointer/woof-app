CarrierWave.configure do |config|

  if Rails.env.development? || Rails.env.test?

    config.storage = :file

  else

    config.fog_provider = 'fog-google'

    config.fog_credentials = {

        :provider                         => "Google",
        :google_storage_access_key_id     => Rails.application.secrets.google_access_key,
        :google_storage_secret_access_key => Rails.application.secrets.google_secret,

    }

    config.fog_directory = "woofwoof"

  end

end