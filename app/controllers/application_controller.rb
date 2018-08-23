class ApplicationController < ActionController::Base
  def xeditable? object = nil
    xeditable = params[:denied] ? false : true
    can?(:edit, object) and xeditable ? true : false
  end
  helper_method :xeditable?

  def can? edit, model
    true
  end
  helper_method :can?
end
