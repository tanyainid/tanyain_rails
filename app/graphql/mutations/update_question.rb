module Mutations
  class UpdateQuestion < BaseMutation
    field :message, String, null: false
    field :slug, String, null: true

    argument :title, String, required: true
    argument :slug, String, required: true

    def resolve(title:, slug:)
      begin
        question = ::Question.friendly.find(slug)
        question.update(title: title)
        { message: 'ok', slug: question.slug }
      rescue
        { message: 'Not found' }
      end
    end
  end
end
