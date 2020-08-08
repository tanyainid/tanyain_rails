module Types
  class QuestionType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
  end
end
