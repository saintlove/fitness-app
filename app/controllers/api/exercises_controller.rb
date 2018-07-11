class Api::ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
    render 'index.json.jbuilder'
  end  

  def show
    exercise_id = params[:id]
    @exercise = Exercise.find(exercise_id)
    render 'show.json.jbuilder'
  end

  def create
    @exercise = Exercise.new(
                          name: params[:name],
                          description: params[:description],
                          image_url: params[:image_url]

                            )

    @exercise.save
    render 'show.json.jbuilder'
  end

  def update
    exercise_id = params[:id]
    @exercise = Exercise.find(exercise_id)
    @exercise.name = params[:name] || @exercise.name
    @exercise.description = params[:description] || @exercise.description
    @exercise.image_url = params[:image_url] || @exercise.image_url
    @exercise.equipment = params[:equipment] || @exercise.equipment


    @exercise.save
    render 'show.json.jbuilder'
  end

  def destroy
    exercise_id = params[:id]
    @exercise = Exercise.find(exercise_id)
    @exercise.destroy
    render json: {message: "Exercise destroyed!"}
  end
end

