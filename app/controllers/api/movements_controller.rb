class Api::MovementsController < ApplicationController
     def index
    @movements = Movement.all
    render 'index.json.jbuilder'
  end  

  def show
    movement_id = params[:id]
    @movement = Movement.find(movement_id)
    render 'show.json.jbuilder'
  end

  def create
    @movement = Movement.new(
                          type: params[:type]
 
                            )

    @movement.save
    render 'show.json.jbuilder'
  end

  def update
    movement_id = params[:id]
    @movement = Movement.find(movement_id)
    @movement.type = params[:type] || @movement.type



    @movement.save
    render 'show.json.jbuilder'
  end

  def destroy
    movement_id = params[:id]
    @movement = Movement.find(movement_id)
    @movement.destroy
    render json: {message: "Movement destroyed!"}
  end
end

