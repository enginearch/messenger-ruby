require 'messenger/components/attachment'

module Messenger
  module Templates
    class CompactList
      include Components::Attachment

      attr_accessor :template_type, :elements, :top_element_style, :buttons

      ATTRIBUTES = %w(template_type elements top_element_style buttons).freeze

      def initialize(elements:, buttons:)
        @type               = 'template'
        @template_type      = 'list'
        @top_element_style  = 'compact'
        @elements           = build_elements(elements)
        @buttons            = build_elements(buttons)
      end
    end
  end
end
