module ContentProducerService

  # Default configuration options for {Client}
  module Default

    # Default Authentication-Service endpoint
    AUTHENTICATION_SERVICE_ENDPOINT = 'https://ims-na1.adobelogin.com'.freeze

    # Default Authorization-Service endpoint
    AUTHORIZATION_SERVICE_ENDPOINT = 'https://authorization.publish.adobe.io'.freeze

    # Default Ingestion-Service endpoint
    INGESTION_SERVICE_ENDPOINT = 'https://ings.publish.adobe.io'.freeze

    # Default Producer-Service endpoint
    PRODUCER_SERVICE_ENDPOINT = 'https://pecs.publish.adobe.io'.freeze

    # Default Product-Service endpoint
    PRODUCT_SERVICE_ENDPOINT = 'https://ps.publish.adobe.io'.freeze

    # Default Push-Notification endpoint
    PUSH_NOTIFICATION_ENDPOINT = 'https://rps.publish.adobe.io'.freeze

    class << self

      # Configuration options
      # @return [Hash]
      def options
        Hash[ContentProducerService::Configurable.keys.map { |key| [key, send(key)] }]
      end

      # Default client ID from ENV
      # @return [String]
      def client_id
        ENV['CONTENT_PRODUCER_SERVICE_CLIENT_ID']
      end

      # Default client secret from ENV
      # @return [String]
      def client_secret
        ENV['CONTENT_PRODUCER_SERVICE_CLIENT_SECRET']
      end

      # Default device ID from ENV
      # @return [String]
      def device_id
        ENV['CONTENT_PRODUCER_SERVICE_DEVICE_ID']
      end

      # Default device token from ENV
      # @return [String]
      def device_token
        ENV['CONTENT_PRODUCER_SERVICE_DEVICE_TOKEN']
      end
    end
  end
end
