class Question < ApplicationRecord
  extend FriendlyId

  belongs_to :user
  has_many :answers

  friendly_id :slug, use: :slugged
end
