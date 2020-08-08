module Types
  class AnswerType < Types::BaseObject
    field :id, Integer, null: false
    field :text, String, null: true
    field :user, UserType, null: false
    field :question, QuestionType, null: false
  end
end
