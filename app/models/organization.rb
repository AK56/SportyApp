class Organization < ApplicationRecord
    serialize :address, Hash

    validates :name, presence: true

    has_many :teams
end
