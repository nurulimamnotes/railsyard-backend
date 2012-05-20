require 'blockenspiel'
require 'railsyard-backend/config/base'

module Railsyard::Backend
  module Config

    class SidebarItem < Base

      attr_reader :name, :type

      def initialize(type, name)
        @name = name.to_sym
        @type = type.to_sym
      end

    end

  end
end
