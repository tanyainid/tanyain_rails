class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def render_record_not_found
    render json: { message: 'Tidak ditemukan' }, status: 404
  end
end
