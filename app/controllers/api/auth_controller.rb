class Api::AuthController < Api::BaseController
  before_action :authorize_request, only: :user
  before_action :set_user, only: [:login, :register]

  def login
    return render_failed if @user.nil?
    return render_failed unless @user.valid_password? params[:password]
    encode_token
  end

  def register
    return render_registered if @user.present?
    @user = create_user
    return render_failed if @user.nil?
    render_success
  end

  def user; end

  private

  def set_user
    @user = User.find_by(email: params[:email].downcase)
  end

  def create_user
    newuser = User.create(email: params[:email], password: params[:password])
    newuser.build_user_detail(name: params[:name])
    newuser.save
    newuser
  end

  def login_params
    params.permit(:email, :password)
  end

  def register_params
    params.permit(:name, :email, :password)
  end

  def payload
    {
      user_id: @user.id,
      time: Time.now.to_i
    }
  end
end
