require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Cooki < OmniAuth::Strategies::OAuth2
      option :name, 'cooki'

      option :client_options, {
        :site => 'http://red.coo.ki',
        :authorize_url => '/oauth2/authorize',
        :token_url => '/oauth2/token'
      }

      uid { raw_info['id'] }

      info do
        {
          # 'name'  => raw_info['name'],
          'email' => raw_info['email']
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/me').parsed
      end
    end
  end
end
