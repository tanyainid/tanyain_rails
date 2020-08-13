class Question < ApplicationRecord
  extend FriendlyId

  belongs_to :user
  has_many :answers

  friendly_id :title, use: :slugged
  acts_as_paranoid

  def should_generate_new_friendly_id?
    slug.blank? || title_changed?
  end
end
