module Messenger
  module Elements
    class WebUrlButton
      attr_accessor :type, :title, :url, :messenger_extensions, :webview_height_ratio, :fallback_url

      REQUIRED_ATTRIBUTES = %w(title url).freeze

      def initialize title:, url:, webview_height_ratio:, fallback_url:
        @type                 = 'web_url'.freeze
        @title                = title
        @url                  = url
        @messenger_extensions = true
        @webview_height_ratio = webview_height_ratio
        @fallback_url         = fallback_url
      end

      def build
        {
          type:                 @type,
          title:                @title,
          url:                  @url,
          messenger_extensions: @messenger_extensions,
          webview_height_ratio: @webview_height_ratio,
          fallback_url:         @fallback_url
        }
      end

    end
  end
end
