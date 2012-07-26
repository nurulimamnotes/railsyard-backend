require 'railsyard-backend/controller'

class Railsyard::StaticController < ApplicationController

  include Railsyard::Backend::Controller::Authentication
  before_filter :authenticate!
  helper_method :authenticator

  layout "railsyard/admin"

  def index; end
end
