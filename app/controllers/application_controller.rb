class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :capture_referal

  def capture_referal
    session[:referral] = params[:ref] if params[:ref]
  end

end
