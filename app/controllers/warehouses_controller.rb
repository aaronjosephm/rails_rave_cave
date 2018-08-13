class WarehousesController < ApplicationController
  def index
    @warehouses = Warehouse.all
  end

  def show
    @warehouse = Warehouse.find(params[:id])
  end

  def new
    @warehouse = Warehouse.new
  end

  def create
    @warehouse = Warehouse.new(warehouse_params)

    if @warehouse.save
      redirect_to warehouses_path
    else
      render :new
    end
  end

  def update
    if @warehouse.update(warehouse_params)
      redirect_to warehouse_path(@warehouse)
    else
      render :edit
    end
  end

  def destroy
    @warehouse = Warehouse.find(params[:id])
    @warehouse.destroy
    redirect_to warehouses_path
  end

  def warehouse_params
    params.require(:warehouse).permit(:name, :photo, :description, :user_id)
  end
end
