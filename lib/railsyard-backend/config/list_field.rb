require 'blockenspiel'
require 'railsyard-backend/config/base'

module Railsyard::Backend
  module Config

    class ListField < Base
      block_attr_accessor :format
      attr_reader :name

      def initialize(name, &block)
        @name = name.to_sym
        Blockenspiel.invoke(block, Dsl::ListField.new(self)) if block_given?
      end
    end

  end
end
