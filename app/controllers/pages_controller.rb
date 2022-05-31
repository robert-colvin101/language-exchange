class PagesController < ApplicationController

  def home
  end

  def profile
    @lessons = Lesson.all
  end

  def contact
  end

  def entry
  end
end
