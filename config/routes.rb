Spree::Core::Engine.routes.draw do
  # Add your extension routes here

  namespace :admin do
    resource :dropbox_settings
    get '/dropbox_settings/connect', to: 'dropbox_settings#connect', as: 'dropbox_settings_connect'
    get '/dropbox_settings/callback', to: 'dropbox_settings#callback', as: 'dropbox_settings_callback'
  end

end
