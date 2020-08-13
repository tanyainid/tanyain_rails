module Mutations
  class GetAnswer < BaseMutation
    field :answer, Types::AnswerType, null: false

    argument :id, Integer, required: true

    def resolve(id:)
      { answer: ::Answer.find(id) }
    end
  end
end
