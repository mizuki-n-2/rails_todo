class ApplicationController < ActionController::Base
  # CSRF対策
  protect_from_forgery with: :null_session
end
