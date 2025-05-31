class ApplicationController < ActionController::Base
  before_action :authenticate_user!, if: :html_request?
  allow_browser versions: :modern
  protect_from_forgery with: :null_session

  private

  def html_request?
    request.format.html?
  end
end
