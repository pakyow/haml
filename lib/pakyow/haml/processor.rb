# frozen_string_literal: true

require "haml"

require "pakyow/presenter/processor"

module Pakyow
  module Haml
    class Processor < Pakyow::Presenter::Processor
      extensions :haml

      def call(content)
        ::Haml::Engine.new(content).render
      end
    end
  end
end
