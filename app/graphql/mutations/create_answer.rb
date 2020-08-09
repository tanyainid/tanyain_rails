module Mutations
  class CreateAnswer < BaseMutation
    field :message, String, null: false

    argument :text, String, required: true
    argument :question_id, Integer, required: true

    def resolve(text:, question_id:)
      current_user = ensure_current_user

      Answer.create(
        user_id: current_user.id,
        question_id: question_id,
        text: text
      )

      { message: 'ok' }
    end
  end
end
