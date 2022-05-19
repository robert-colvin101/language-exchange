class PagesController < ApplicationController

  def home
  end

  def profile
    @properties = Properties.all
  end

  def contact
  end

  def entry
  end
end
