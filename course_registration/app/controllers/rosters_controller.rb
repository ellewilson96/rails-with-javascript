class RostersController < ApplicationController
    def index
      @rosters = Roster.all
    end

    def show
      @roster = Roster.find_by_id(params[:id])
    end

    def new
      @roster = Roster.new
    end

    def create
      @roster = Roster.new(roster_params)
      if @roster.save
        redirect_to user_path(current_user.id)
      else
        render :home
      end
    end

    private

    def roster_params
      params.require(:roster).permit(:user_id, :student_id, :course_id)
    end
end
