module Types
  class MutationType < Types::BaseObject
    field :create_answer, mutation: Mutations::CreateAnswer
    field :create_question, mutation: Mutations::CreateQuestion
    field :question, mutation: Mutations::Question
    field :secret, mutation: Mutations::Secret
    field :login_user, mutation: Mutations::User::LoginUser
    field :create_user, mutation: Mutations::User::CreateUser
  end
end
