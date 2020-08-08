module Types
  class MutationType < Types::BaseObject
    field :login_user, mutation: Mutations::User::LoginUser
    field :create_user, mutation: Mutations::User::CreateUser
  end
end
