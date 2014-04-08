class ClubListController < ApplicationController
  def index
	@clubs = Club.all
  end
end
