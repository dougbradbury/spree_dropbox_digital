require 'dropbox_sdk'
module Spree
  class Admin::DropboxSettingsController < Admin::BaseController
    def connect
      redirect_to flow.start()
    end

    def callback
      access_token, user_id, url_state = flow.finish(params)
      Spree::Config.set( :dropbox_token => access_token, :dropbox_user => user_id )
      redirect_to admin_dropbox_settings_path
    end

    def show
    end

    private
      def flow
        DropboxOAuth2Flow.new(
          Spree::Config[:dropbox_key],
          Spree::Config[:dropbox_secret],
          admin_dropbox_settings_callback_url,
          session,
          :dropbox_auth_csrf_token,
          I18n.locale.to_s
        )
    end
  end
end

