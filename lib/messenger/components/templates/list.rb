require 'messenger/components/attachment'

module Messenger
  module Templates
    class List
      include Components::Attachment

      attr_accessor :template_type, :elements, :top_element_style

      ATTRIBUTES = %w(template_type elements top_element_style).freeze

      def initialize(elements, compact = false)
        @type               = 'template'
        @template_type      = 'list'
        @top_element_style  = compact ? "compact" : nil
        @elements           = build_elements(elements)
      end
    end
  end
end
