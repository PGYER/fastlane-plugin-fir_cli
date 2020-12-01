require 'fastlane_core/ui/ui'

module Fastlane
  UI = FastlaneCore::UI unless Fastlane.const_defined?("UI")

  module Helper
    class FirCliHelper
      # class methods that you define here become available in your action
      # as `Helper::FirCliHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the fir_cli plugin helper!")
      end
    end

    class FirHelper
      include FIR::Util

      FIR::VERSION = "#{FIR::VERSION}-Fastlane-#{Fastlane::FirCli::VERSION}"
      class << self
        def logger
          @logger ||= Logger.new(STDOUT)
        end
      end
      
    end

    class FIR::AppUploader
      def logger
        self.class.logger
      end
      class << self
        def logger 
          @logger ||= Logger.new(STDOUT)
        end
      end
    end
  end
end
