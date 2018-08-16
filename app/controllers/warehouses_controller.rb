class WarehousesController < ApplicationController
  before_action :set_warehouse, only: [:show, :destroy, :edit]

  def index
    @warehouses = policy_scope(Warehouse)
  end

  def show
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
      redirect_to warehouse_path(@warehouse)
    else
      render :edit
    end
  end

  def destroy
    @warehouse.destroy
    redirect_to profile_path
  end

  private

  def warehouse_params
    params.require(:warehouse).permit(:name, :photo, :description)
  end

  def set_warehouse
    @warehouse = Warehouse.find(params[:id])
    authorize @warehouse
  end
end
