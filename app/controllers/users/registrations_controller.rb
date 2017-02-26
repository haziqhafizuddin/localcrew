module Users
  class RegistrationsController < Devise::RegistrationsController
    def edit
      resource = build_resource({})
      resource.experiences.build
      respond_with resource
    end
  end
end