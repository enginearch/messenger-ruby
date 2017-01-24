module Messenger
  module Elements
    class WebUrlButton
      attr_accessor :type, :title, :url, :messenger_extensions, :webview_height_ratio, :fallback_url

      REQUIRED_ATTRIBUTES = %w(title url).freeze

      def initialize params
        @type                 = 'web_url'.freeze

        assign_or_raise_exception params, REQUIRED_ATTRIBUTES

        @messenger_extensions = params['messenger_extensions'] || true
        @webview_height_ratio = params['webview_height_ratio'] || 'compact'.freeze
        @fallback_url         = params['fallback_url']
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

      def assign_or_raise_exception params, keys
        puts "params: #{params.inspect}"

        keys.each do |key|
          puts "params[#{key}]: params[key].present?"
          if params[key].present?
            self["@#{key}"]  = params[key]
          else
            raise ArgumentError.new("#{key} is required as parameter in WebUrlButton")
          end
        end
      end

    end
  end
end
