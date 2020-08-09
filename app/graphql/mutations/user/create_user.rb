module Mutations
  class User::CreateUser < BaseMutation
    argument :name, String, required: true
    argument :email, String, required: true
    argument :password, String, required: true

    field :message, String, null: false

    def resolve(name: , email: , password: )
      olduser = ::User.find_by(email: email)
      return { message: 'registered' } if olduser.present?
      newuser = ::User.create(email: email, password: password)
      newuser.build_user_detail(name: name)
      newuser.save
      if newuser.valid?
        { message: 'created' }
      else
        { message: 'failed', errors: newuser.errors }
      end
    end
  end
end
