class OrganizationsController < ApplicationController
    
    def index
        @teams = Team.all
        @org = Organization.first
    end

    # endpoint for team activity data set
    def team_activity
        @team = Team.includes(:members).find(params[:id])
        data = []
        # Build team activity weekly data set for each of its members
        @team.members.each do |member|
            member_data = []
            ((Date.today - 8)..Date.today).each do |date|
            member_data << [date, member.activities.where(paticipation_date: date).sum(:duration)]
            end
            data << {name: member.name, data: member_data} 
        end 
        render json: data
    end
end
