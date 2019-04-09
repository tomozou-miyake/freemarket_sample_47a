class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
    @ItemImage = ItemImage.new
  end

  def create
    Item.create(item_params)
    redirect_to root_path
  end

  private
  def item_params
    params.require(:item).permit(:status_id ,{:item_image_ids => []},:category_ids, :item_size_ids, :brand_ids ,:name,:description,:condition_id,:shipping_burden_id, :shipping_style_id ,:prefecture_id,:date_of_shipment_id ,:price).merge(user_id: current_user.id,)
  end
end
