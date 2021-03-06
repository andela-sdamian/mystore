class ProductsController < ApplicationController 
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def listing
    @listings = Product.all 
  end 

  def index 
    if params[:sort]
      @products = Product.sort(params[:sort], params[:direction], params[:page])
    else 
     @products = Product.search(params[:search], params[:page]) 
    end  
  end 

  def show 
  end 

  def edit 
  end 

  def update 
    if @product.update(product_params) 
      redirect_to @product 
    else
      render :edit 
    end 
  end 

  def new 
    @product = Product.new 
  end 

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product 
    else 
      render :new 
    end 
  end 

  def destroy 
    @product.destroy 

    redirect_to products_url 
  end 

  private 

  def set_product 
    @product = Product.find(params[:id])
  end 

  def product_params 
    params.require(:product).permit(:name, :price, :category_id, 
      :search, :page, :image_url, :description)
  end 
end 
