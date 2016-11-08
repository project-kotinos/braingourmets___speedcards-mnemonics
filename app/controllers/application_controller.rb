# frozen_string_literal: true

##
# Generic application controller.
#
# @author Oliver Klee
#
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
