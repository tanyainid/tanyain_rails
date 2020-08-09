module Types
  class QuestionType < Types::BaseObject

    field :id, Integer, null: false
    field :title, String, null: false
    field :user, UserType, null: false
    field :answers, [AnswerType], null: false

    # argument :id, Integer, required: false

    # def question(id: )
    #   Question.find(id)
    # end
  end
end
