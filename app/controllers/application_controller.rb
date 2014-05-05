class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  if defined?(MonoList::BASIC_AUTH)
    http_basic_authenticate_with BASIC_AUTH
  end
end
