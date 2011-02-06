# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_raks_session',
  :secret      => 'de7330626d07bcf04ffdb77d49140f94130156bbd08e9db7eb022d618ea15bbd3e6112ff14b5389be69f8e6bda040970cadae981897dc5a87850b26e8bbf4d2e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
