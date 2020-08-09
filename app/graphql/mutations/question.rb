module Mutations
  class Question < BaseMutation
    field :question, Types::QuestionType, null: false

    argument :id, Integer, required: true

    def resolve(id:)
      { question: ::Question.find(id) }
    end
  end
end
