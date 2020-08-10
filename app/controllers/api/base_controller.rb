class Api::BaseController < ApplicationController

  def authorize_request
    return render_require_auth unless auth_header
    return render_failed unless decode

    @current_user = User.find(@auth_decoded.first['user_id'])
  end

  def encode_token
    @access_token = JWT.encode payload, Figaro.env.jwt_secret_key
  end

  def decode
    @auth_decoded = JWT.decode auth_header.split.last, Figaro.env.jwt_secret_key, true, algorithm: 'HS256'
  end

  def auth_header
    request.headers['Authorization']
  end

  def render_success
    render json: { message: 'success' }
  end

  def render_failed
    render json: { message: 'fail' }, status: 422
  end

  def render_registered
    render json: { message: 'registered' }, status: 422
  end

  def render_require_auth
    render json: { message: 'require auth' }, status: 401
  end
end
