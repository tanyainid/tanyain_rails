module Mutations
  class User::LoginUser < BaseMutation
    argument :email, String, required: true
    argument :password, String, required: true

    field :access_token, String, null: false

    def resolve(email: , password: )
      # todo: implement login
      { access_token: 'abc123' }
    end
  end
end
