# CarrierWave.configure do |config|

#   config.fog_provider = 'fog/aws'                        # required

#   config.fog_credentials = {

#     provider:              'AWS',                        # required
#     # aws_access_key_id:     ENV["AWS_ACCESS"],                       # required
#     # aws_secret_access_key: ENV["AWS_SEC"],                    # required
#     region:                'eu-west-1',                  # optional, defaults to 'us-east-1'
#     host:                  's3.example.com',             # optional, defaults to nil
#     endpoint:              'https://s3.example.com:8080' # optional, defaults to nil
#   }
#   config.fog_directory  = 'woofwoof'                          # required

# end

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => <%= ENV['AWS_ACCESS'] %>,
    :aws_secret_access_key  => <%= ENV['AWS_SEC'] %>,
    :region                 => 'us-west-1'
  }
  config.fog_directory  = 'woofwoof'
end