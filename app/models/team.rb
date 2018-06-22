class Team < ApplicationRecord
    validates :name, presence: true
    
    belongs_to :organization
    has_and_belongs_to_many :members

    def create_members(member)
        
    end
end
