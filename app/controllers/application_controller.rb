class ApplicationController < ActionController::Base
# runs authenticity on Base / ensure it isn't running on API
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

end
