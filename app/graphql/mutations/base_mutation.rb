module Mutations
  class BaseMutation < GraphQL::Schema::RelayClassicMutation
    argument_class Types::BaseArgument
    field_class Types::BaseField
    input_object_class Types::BaseInputObject
    object_class Types::BaseObject

    def encode_token(payload)
      JWT.encode(payload, Figaro.env.jwt_secret_key)
    end

    def auth_header
      request.headers['Authorization']
    end

    def decoded_token
      if auth_header
        token = auth_header.split(' ')[1]
        begin
          JWT.decode(token, Figaro.env.jwt_secret_key, true, algorithm: 'HS256')
        rescue JWT::DecodeError
          nil
        end
      end
    end

    def logged_in_user
      if decoded_token
        user_id = decoded_token[0]['user_id']
        @user = User.find_by(id: user_id)
      end
    end

    def logged_in?
      !!ensure_current_user
    end

    # def authorized
    #   render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    # end

    def ensure_current_user
      current_user = context[:current_user]
      raise GraphQL::ExecutionError, 'Not authorized' unless current_user
      current_user
    end
  end
end
