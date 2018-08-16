class WarehousesController < ApplicationController
  before_action :set_warehouse, only: [:show, :destroy, :edit]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @warehouses = policy_scope(Warehouse)
  end

  def show

    @marker =
      {
        lat: @warehouse.latitude,
        lng: @warehouse.longitude
      }

  end

  def new
    @warehouse = Warehouse.new
    authorize @warehouse
  end

  def create
    @warehouse = Warehouse.new(warehouse_params)
    authorize @warehouse
    @warehouse.user_id = current_user[:id]
    if @warehouse.save
      redirect_to profile_url
    else

      render :new
    end
  end

  def edit
  end

  def update
    @warehouse = Warehouse.find(params[:id])
    authorize @warehouse
    if @warehouse.update(warehouse_params)
      redirect_to profile_warehouses_url
    else
      render :edit
    end
  end

  def destroy
    @warehouse.destroy
    redirect_to profile_warehouses_url
  end

  private

  def warehouse_params
    params.require(:warehouse).permit(:name, :photo, :description, :address, :price)
  end

  def set_warehouse
    @warehouse = Warehouse.find(params[:id])
    authorize @warehouse
  end
end
