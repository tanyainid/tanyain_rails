module Mutations
  class CreateUser < BaseMutation
    argument :email, String, required: true
    argument :password, String, required: true

    field :message, String, null: false

    def resolve(email: , password: )
      olduser = User.find_by(email: email)
      return { message: 'registered' } if olduser.present?
      newuser = User.create(email: email, password: password)
      if newuser.valid?
        { message: 'created' }
      else
        { message: 'failed', errors: newuser.errors }
      end
    end
  end
end
