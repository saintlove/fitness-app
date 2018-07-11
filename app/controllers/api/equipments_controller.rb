class Api::EquipmentsController < ApplicationController
     def index
    @equipments = Equipment.all
    render 'index.json.jbuilder'
  end  

  def show
    equipment_id = params[:id]
    @equipment = Equipment.find(equipment_id)
    render 'show.json.jbuilder'
  end

  def create
    @equipment = Equipment.new(
                          name: params[:name]
 
                            )

    @equipment.save
    render 'show.json.jbuilder'
  end

  def update
    equipment_id = params[:id]
    @equipment = Equipment.find(equipment_id)
    @equipment.name = params[:name] || @equipment.name



    @equipment.save
    render 'show.json.jbuilder'
  end

  def destroy
    equipment_id = params[:id]
    @equipment = Equipment.find(equipment_id)
    @equipment.destroy
    render json: {message: "Equipment destroyed!"}
  end
end

