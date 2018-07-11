class Api::MuscleGroupsController < ApplicationController
   def index
    @muscle_groups = MuscleGroup.all
    render 'index.json.jbuilder'
  end  

  def show
    muscle_group_id = params[:id]
    @muscle_group = MuscleGroup.find(muscle_group_id)
    render 'show.json.jbuilder'
  end

  def create
    @muscle_group = MuscleGroup.new(
                          primary: params[:primary],
                          image_url: params[:image_url],
                          secondary: params[:secondary]
                            )

    @muscle_group.save
    render 'show.json.jbuilder'
  end

  def update
    muscle_group_id = params[:id]
    @muscle_group = MuscleGroup.find(muscle_group_id)
    @muscle_group.primary = params[:primary] || @muscle_group.primary
    @muscle_group.image_url = params[:image_url] || @muscle_group.image_url
    @muscle_group.secondary = params[:secondary] || @muscle_group.secondary


    @muscle_group.save
    render 'show.json.jbuilder'
  end

  def destroy
    muscle_group_id = params[:id]
    @muscle_group = MuscleGroup.find(muscle_group_id)
    @muscle_group.destroy
    render json: {message: "Muscle Group destroyed!"}
  end
end
