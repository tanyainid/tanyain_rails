module Types
  class MutationType < Types::BaseObject
    field :question, mutation: Mutations::Question
    field :secret, mutation: Mutations::Secret
    field :login_user, mutation: Mutations::User::LoginUser
    field :create_user, mutation: Mutations::User::CreateUser
  end
end
