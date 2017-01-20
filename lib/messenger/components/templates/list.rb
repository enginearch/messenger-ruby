require 'messenger/components/attachment'

module Messenger
  module Templates
    class List
      include Components::Attachment

      attr_accessor :template_type, :elements, :buttons

      ATTRIBUTES = %w(template_type elements buttons).freeze

      def initialize(elements:, buttons:)
        @type               = 'template'
        @template_type      = 'list'
        @elements           = build_elements(elements)
        @buttons            = build_elements(buttons)
      end
    end
  end
end
