class ItemsController < ApplicationController

  def create
    @sale = Sale.find(params[:sale_id])
    @item = @sale.items.create(item_params)
    redirect_to sale_path(@sale)
  end

  def destroy
    @sale = Sale.find(params[:sale_id])
    @item = @sale.items.find(params[:id])
    @item.destroy
    redirect_to sale_path(@sale)
  end
 
  private
    def item_params
      params.require(:item).permit(:item_name, :description, :SKU, :cost_price, :retail_price, :date_sold)
    end
end
