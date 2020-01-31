class ApplicationController < ActionController::Base
  before_action :authenticate_farmer!
  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

    def user_not_authorized
      flash[:warning] = "You are not authorized to perform this action."
      redirect_to(request.referrer || root_path)
    end
    def current_user
  		current_farmer
  	end
end
