require "serverkit/resources/base"

module Serverkit
  module Resources
    class Service < Base
      attribute :name, required: true, type: String

      def apply
        run_command_from_identifier(:start, name)
      end

      def check
        check_command_from_identifier(:check_service_is_running, name)
      end
    end
  end
end