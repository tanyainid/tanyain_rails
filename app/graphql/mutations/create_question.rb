module Mutations
  class CreateQuestion < BaseMutation
    field :message, String, null: false
    field :slug, String, null: false

    argument :title, String, required: true

    def resolve(title:)
      current_user = ensure_current_user
      question = current_user.questions.create(title: title)
      { message: 'ok', slug: question.slug }
    end
  end
end
