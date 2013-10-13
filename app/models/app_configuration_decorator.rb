Spree::AppConfiguration.class_eval do
  preference :dropbox_key, :string
  preference :dropbox_secret, :string
  preference :dropbox_token, :string
  preference :dropbox_user, :string
end

