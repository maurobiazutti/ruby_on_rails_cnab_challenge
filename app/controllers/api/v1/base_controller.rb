class Api::V1::BaseController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  protected

  def render_error(message, status = :unprocessable_entity)
    render json: { error: message }, status: status
  end
end
