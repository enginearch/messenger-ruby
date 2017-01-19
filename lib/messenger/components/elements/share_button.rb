module Messenger
  module Elements
    class ShareButton
      attr_accessor :type

      def initialize
        @type  = 'element_share'
      end

      def build
        { type: @type }
      end

    end
  end
end
