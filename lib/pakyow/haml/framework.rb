# frozen_string_literal: true

require "pakyow/framework"

require "pakyow/haml/processor"

module Pakyow
  module Haml
    class Framework < Pakyow::Framework(:haml)
      def boot
        object.state(:processor) << Pakyow::Haml::Processor
      end
    end
  end
end
