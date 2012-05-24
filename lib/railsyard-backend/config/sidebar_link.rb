require 'blockenspiel'
require 'railsyard-backend/config/base'

module Railsyard::Backend
  module Config

    class SidebarLink < Base

      attr_reader :type, :name, :url, :html_options

      def initialize(type, name, url, html_options={})
        @type = type.to_sym
        @name = name
        @url = url
        @html_options = html_options
      end

    end

  end
end
