class PagesController < ApplicationController
  before_action :authenticate_user!
  
  def home
  end

  def about
  end

  def games
  end

  def api
  end

  def contact
  end

  def creative
  end
end
