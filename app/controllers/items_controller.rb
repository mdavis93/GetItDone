class ItemsController < ApplicationController
  before_action :all_items, only: [:index, :create, :destroy]
  respond_to :html, :js

  def new
    @item = Item.new
    @user = current_user
  end

  def create
    @item = current_user.items.create(item_params)

    if @item.save
      puts 'Success!'
    else
      puts 'Error'
      format.json{ render json: @item.errors.full_messages, status: :unprocessable_entity}
      puts @item.inspect
    end
  end

  def destroy
    @item = Item.find(params[:id])

    @item.destroy
    respond_to do |f|
      f.html { redirect_to root }
      f.js
    end
  end

  private

  def all_items
    @items = Item.all
    @user = current_user
  end

  def item_params
    params.require(:item).permit(:user_id, :name, :expires_at)
  end
end
