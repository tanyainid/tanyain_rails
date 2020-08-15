module Types
  class UserType < Types::BaseObject
    field :id, Integer, null: false
    field :email, String, null: false
    field :name, String, null: false
    field :user_detail, UserDetailType, null: false
  end
end
