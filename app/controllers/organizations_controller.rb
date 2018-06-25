class OrganizationsController < ApplicationController
    
    def index
        @teams = Team.all
    end

end
