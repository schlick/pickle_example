# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pickle_example_session',
  :secret      => '74e49d7cf80780fa827e8d4151cf8984d337c95f23b5997c471628b1480d4d59f7924b6b6a315363dc05b4f1a67df760b9616b1b3290f198c67aef89b17c4d38'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
