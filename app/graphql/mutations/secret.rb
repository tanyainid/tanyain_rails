module Mutations
  class Secret < BaseMutation
    field :message, String, null: true

    argument :name, String, required: false

    def resolve(args)
      current_user = ensure_current_user

      { message: current_user.email }
    end
  end
end
