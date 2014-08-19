class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
    @all_current_referrers = User.where(referrale_code: current_user.referrale_code)
  end
end
