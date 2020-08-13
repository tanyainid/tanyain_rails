module Mutations
  class DeleteAnswer < BaseMutation
    field :message, String, null: false

    argument :id, Integer, required: true

    def resolve(id:)
      begin
        answer = ::Answer.find(id)
        answer.destroy
        { message: 'ok' }
      rescue
        { message: 'Not found' }
      end
    end
  end
end
