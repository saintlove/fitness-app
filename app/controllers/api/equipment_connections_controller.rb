class Api::EquipmentConnectionsController < ApplicationController
       def index
    @equipment_connections = EquipmentConnection.all
    render 'index.json.jbuilder'
  end  

  def show
    equipment_connection_id = params[:id]
    @equipment_connection = EquipmentConnection.find(equipment_connection_id)
    render 'show.json.jbuilder'
  end

  def create
    @equipment_connection = EquipmentConnection.new(
                          name: params[:name]
 
                            )

    @equipment_connection.save
    render 'show.json.jbuilder'
  end

  def update
    equipment_connection_id = params[:id]
    @equipment_connection = EquipmentConnection.find(equipment_connection_id)
    @equipment_connection.name = params[:name] || @equipment_connection.name



    @equipment_connection.save
    render 'show.json.jbuilder'
  end

  def destroy
    equipment_connection_id = params[:id]
    @equipment_connection = EquipmentConnection.find(equipment_connection_id)
    @equipment_connection.destroy
    render json: {message: "Equipment destroyed!"}
  end
end

