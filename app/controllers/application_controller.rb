class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resources)
    items_path
  end
end
