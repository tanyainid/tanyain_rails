module Types
  class UserType < Types::BaseObject
    field :id, Integer, null: false
    field :email, String, null: false
    field :name, String, null: false
    # field :user_detail, UserDetail, null: false
  end
end
