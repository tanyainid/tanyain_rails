module Mutations
  class UpdateAnswer < BaseMutation
    field :message, String, null: false

    argument :text, String, required: true
    argument :id, Integer, required: true

    def resolve(text:, id:)
      begin
        answer = ::Answer.find(id)
        answer.update(text: text)
        { message: 'ok' }
      rescue
        { message: 'Not found' }
      end
    end
  end
end
