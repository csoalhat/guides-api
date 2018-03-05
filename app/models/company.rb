class Company < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :activities
  belongs_to :owner, class_name: 'User'
end
