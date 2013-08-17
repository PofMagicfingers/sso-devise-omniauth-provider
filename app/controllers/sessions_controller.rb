class SessionsController < Devise::SessionsController
  private
    def after_sign_out_path_for(resource_or_scope)
      params[:redirect_uri].blank? ? super : params[:redirect_uri]
    end
end

