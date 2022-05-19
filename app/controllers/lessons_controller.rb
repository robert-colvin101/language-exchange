class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def new
    @lesson = Lesson.find(params[:id])
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.find(params[:lesson_id])
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to profile_path
    else
      render :new
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @teacher = lesson.user
    @lesson.destroy
    redirect_to lesson_path(@lesson)
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lessson.update(lesson_params)
    redirect_to lesson_path(@lesson)
  end

end
