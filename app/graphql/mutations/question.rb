module Mutations
  class Question < BaseMutation
    field :question, Types::QuestionType, null: false

    argument :slug, String, required: true

    def resolve(slug:)
      { question: ::Question.friendly.find(slug) }
    end
  end
end
