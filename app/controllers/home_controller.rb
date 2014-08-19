class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to :controller=>'dashboard', :action => 'index'
    end

    @current_referrer = User.find_by affiliate_code: session[:referral]
  end
end
