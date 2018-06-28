class Activity < ApplicationRecord
    belongs_to :member
    belongs_to :sport
    validates :sport_id, :paticipation_date, :duration, presence: true
    #validates :paticipation_date, uniqueness: {scope: [:sport_id, :member_id], message: "has duplicate entry for the sport activity"}
end
