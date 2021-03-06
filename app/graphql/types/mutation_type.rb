module Types
  class MutationType < Types::BaseObject
    field :get_answer, mutation: Mutations::GetAnswer
    field :update_answer, mutation: Mutations::UpdateAnswer
    field :delete_answer, mutation: Mutations::DeleteAnswer
    field :update_question, mutation: Mutations::UpdateQuestion
    field :delete_question, mutation: Mutations::DeleteQuestion
    field :filter_questions, mutation: Mutations::FilterQuestions
    field :create_answer, mutation: Mutations::CreateAnswer
    field :create_question, mutation: Mutations::CreateQuestion
    field :question, mutation: Mutations::Question
    field :secret, mutation: Mutations::Secret
    field :login_user, mutation: Mutations::User::LoginUser
    field :create_user, mutation: Mutations::User::CreateUser
  end
end
