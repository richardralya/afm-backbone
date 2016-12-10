Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['APP_ID'], ENV['APP_SECRET'],
    scope: 'email,user_birthday,read_stream', display: 'popup'
    
  require 'openid/store/filesystem' 
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
  provider :openid, store: OpenID::Store::Filesystem.new('/tmp')
end