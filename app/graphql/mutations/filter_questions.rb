module Mutations
  class FilterQuestions < BaseMutation
    field :questions, [Types::QuestionType], null: false

    def resolve
      current_user = ensure_current_user
      { questions: current_user.questions }
    end
  end
end
