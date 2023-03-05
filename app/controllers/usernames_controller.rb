class UsernamesController < ApplicationController
    before_action :authenticate_user!
    skip_before_action :redirect_to_username_form
    def new
  
    end

    def update
        current_user.update(username_params)
        redirect_to dashboard_path
    end

    def username_params
        params.require(:user).permit(:username)
    end
end