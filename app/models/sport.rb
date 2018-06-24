class Sport < ApplicationRecord
    validates :name, presence: true
    has_one_attached :icon
    has_many :activities
    has_many :members, through: :activities
end
