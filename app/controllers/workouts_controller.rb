#created with scaffolding but cleaned up
class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def new
    @workout = Workout.new
  end

  def edit
    @workout = Workout.find(params[:id])
  end

  def create
    @workout = Workout.new(params[:workout])
    if @workout.save
      redirect_to @workout, notice: 'Workout was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @workout = Workout.find(params[:id])
      if @workout.update_attributes(params[:workout])
        redirect_to @workout, notice: 'Workout was successfully updated.'
      else
        render action: "edit"
      end
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy
    redirect_to workouts_url
  end
end
