class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery

  allow_browser versions: :modern
end
