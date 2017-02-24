class ProfilesController < ApplicationController
    before_action :authenticate_user!
    def index
        @ftuser = current_user
        @experiences = @ftuser.experiences
        unless @ftuser.first_name? || @ftuser.last_name? || @ftuser.user_bio? || @ftuser.location?
            redirect_to edit_user_registration_path
        end
    end
end