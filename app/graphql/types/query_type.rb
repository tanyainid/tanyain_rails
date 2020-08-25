module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :all_questions, [QuestionType], null: false
    def all_questions
      Question.all
    end

    field :all_users, [UserType], null: false
    def all_users
      User.all
    end

    field :all_user_details, [UserType], null: false
    def all_user_details
      UserDetail.all
    end

    field :all_answers, [AnswerType], null: false
    def all_answers
      Answer.joins(:question)
    end

    field :my_questions, [QuestionType], null: false
    def my_questions
      context[:current_user].questions
    end

    field :my_answers, [AnswerType], null: false
    def my_answers
      context[:current_user].answers.joins(:question)
    end
  end
end
