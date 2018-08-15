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
    @warehouse.user_id = current_user[:id]
    if @warehouse.save
      redirect_to profile_url
    else

      render :new
    end
  end

  def edit
    @warehouse = Warehouse.find(params[:id])
  end

  def update
    @warehouse = Warehouse.find(params[:id])
    if @warehouse.update(warehouse_params)
      redirect_to warehouse_path(@warehouse)
    else
      render :edit
    end
  end

  def destroy
    @warehouse = Warehouse.find(params[:id])
    @warehouse.destroy
    redirect_to profile_path
  end

  def warehouse_params
    params.require(:warehouse).permit(:name, :photo, :description)
  end
end
