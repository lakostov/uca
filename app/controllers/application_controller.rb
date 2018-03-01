class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, :with => :render_404

  def render_404
    render :template => "error/not_found", :status => 404
  end
end
