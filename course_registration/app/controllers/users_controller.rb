class UsersController < ApplicationController

  def show
    @rosters = current_user.rosters
  end


end
