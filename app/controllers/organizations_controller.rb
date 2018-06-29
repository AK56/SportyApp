class OrganizationsController < ApplicationController
    
    def index
        @teams = Team.includes(members: [:activities]).all
    end

    def team_activity
        member = Member.find(params[:id])
        member_data = member.activities.group_by_day(:paticipation_date, last: 10).map {|d| [d.paticipation_date, d.duration]}
        render json: member_data
    end
end
