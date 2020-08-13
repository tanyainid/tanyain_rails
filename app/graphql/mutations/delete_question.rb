module Mutations
  class DeleteQuestion < BaseMutation
    field :message, String, null: false

    argument :slug, String, required: true

    def resolve(slug:)
      begin
        question = ::Question.friendly.find(slug)
        question.destroy
        { message: 'ok' }
      rescue
        { message: 'Not found' }
      end
    end
  end
end
