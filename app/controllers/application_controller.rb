class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @homeText = HomeText.all
  end

  def contact
  end

  def about
  end

  def photos
  end

  def videos
  end
end
