class Activity < ApplicationRecord
    belongs_to :member
    belongs_to :sport
    validates :paticipation_date, :duration, presence: true
end
