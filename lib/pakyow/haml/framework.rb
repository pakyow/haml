# frozen_string_literal: true

require "haml"

require "pakyow/framework"

module Pakyow
  module Haml
    class Framework < Pakyow::Framework(:haml)
      def boot
        app.processor :haml do |content|
          ::Haml::Engine.new(content).render
        end
      end
    end
  end
end
