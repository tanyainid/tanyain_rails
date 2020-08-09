module Mutations
  class CreateQuestion < BaseMutation
    field :message, String, null: false

    argument :title, String, required: true

    def resolve(title:)
      current_user = ensure_current_user

      current_user.questions.create(title: title)
      { message: 'ok' }
    end
  end
end
