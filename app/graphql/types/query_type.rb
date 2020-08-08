module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :all_questions, [QuestionType], null: false
    def all_questions
      Question.all
    end

    field :all_users, [UserType], null: false
    def all_users
      User.all
    end

    field :all_answers, [AnswerType], null: false
    def all_answers
      Answer.all
    end
  end
end
