class Member < ApplicationRecord

    validates :first_name, :last_name, :email, presence: true
    has_and_belongs_to_many :teams
    has_many :activities
    has_many :sports, through: :activities
    has_one_attached :avatar
end
