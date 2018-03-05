class Activity < ApplicationRecord
    has_many :guides
    belongs_to :company
end
