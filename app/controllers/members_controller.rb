class MembersController < ApplicationController
  before_action :set_member, only: [:edit, :update, :destroy]
  before_action :set_sports, only: [:new, :edit, :show, :update]
  # GET /members
  # GET /members.json
  def index
    @members = Member.with_attached_avatar.all
  end

  # GET /members/1
  # GET /members/1.json
  def show
    # Eager loading teams and members of those teams, as this all will be displayed
    # on member's view
    @member = Member.with_attached_avatar.includes(teams: [:members]).find(params[:id])
    @member_interests = Sport.with_attached_icon.where(id: @member.interests)
  end

  # GET /members/new
  def new
    @member = Member.new
  end

  # GET /members/1/edit
  def edit
    respond_to do |format|
      format.html {render :edit}
      format.js{}
    end
  end

  # POST /members
  # POST /members.json
  def create
    @member = Member.new(member_params)
    @member.avatar.attach(member_params[:avatar]) unless member_params[:avatar].nil?
    respond_to do |format|
      if @member.save
        format.html { redirect_to members_url, notice: 'Member was successfully created.' }
        format.json { render :show, status: :created, location: @member }
      else
        format.html { render :new }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    respond_to do |format|
      if @member.update(member_params)
        @member.avatar.attach(member_params[:avatar]) unless member_params[:avatar].nil?
        format.html { redirect_to my_profile_path, notice: 'Member was successfully updated.' }
        format.json {}
      else
        format.html { render :edit }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to members_url, notice: 'Member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def activity_chart
    @member = Member.includes(:activities).find(params[:id])
    # Get user participation for a week
    weeks_data = @member.activities.group_by_day(:paticipation_date, last: 8).map {|d| [d.paticipation_date, d.duration]}
    render json: weeks_data
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.with_attached_avatar.includes(:teams).find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:first_name, :last_name, :email, :height_in_inches, :weight_in_lb, :isPublic, :avatar, activities_attributes: [:id, :sport_id, :paticipation_date, :duration, :_destroy], interests:[])
    end

    def set_sports
      @sports = Sport.all.collect {|s| [s.name, s.id]}
    end

    def set_avatar
      if member_params[:avatar]
        @member.avatar.attach(member_params[:avatar]) 
      elsif !@member.avatar.attached?
          @member.avatar.attach(io: File.open('app/assets/images'), filename: 'app_logo.png', content_type: 'image/png')
      end
    end

end
