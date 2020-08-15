module Mutations
  class User::LoginUser < BaseMutation

    argument :email, String, required: false
    argument :password, String, required: false

    field :message, String, null: false
    field :access_token, String, null: true

    def resolve(email: , password: )
      @user = ::User.find_by(email: email.downcase)
      return { message: 'not found' } if @user.blank?
      return { message: 'fail' } unless @user.valid_password? password

      return { message: 'ok', access_token: encode_token(payload) }
    end

    def payload
      { user_id: @user.id, time: Time.now }
    end
  end
end
