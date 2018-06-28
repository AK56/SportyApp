class Member < ApplicationRecord
    before_save do
        self.interests.delete("") if attribute_present?("interests")
    end
    serialize :interests, Array
    validates :first_name, :last_name, :email, presence: true
    has_and_belongs_to_many :teams
    has_many :activities
    has_many :sports, through: :activities
    has_one_attached :avatar

    accepts_nested_attributes_for :activities, allow_destroy: true 
    
    def name 
        "#{first_name} #{last_name}"
    end
end
