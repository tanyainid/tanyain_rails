module Mutations
  class UpdateQuestion < BaseMutation
    field :message, String, null: false

    argument :title, String, required: true
    argument :slug, String, required: true

    def resolve(title:, slug:)
      begin
        question = ::Question.friendly.find(slug)
        question.update(title: title)
        { message: 'ok' }
      rescue
        { message: 'Not found' }
      end
    end
  end
end
