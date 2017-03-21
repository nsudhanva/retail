class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def import    
    # binding.pry
    if params[:file].nil?
      redirect_to products_path, notice: 'No file attached' and return 
    end

    filename = params[:file].path

    if File.extname(filename).to_s == ".csv" || File.extname(filename).to_s == ".xls" || File.extname(filename).to_s == ".xlsx"
      CSV.foreach(filename, :headers => true) do |row|
        Product.create!(row.to_hash)        
      end
      redirect_to products_path, notice: 'Product(s) were successfully added.' and return 
    else 
      redirect_to products_path, notice: 'Unknown file type #{filename}' and return 
    end    
  end

  # GET /products
  # GET /products.json
  def index
    @products = Product.all

    respond_to do |format| 
      format.html 
      format.csv { send_data @products.to_csv } 
      format.xls  
    end 
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new

    @sub_categories = []
    
    if params[:category]
      @sub_categories = Package.find_by_supplier_id(params[:supplier].to_i)
    end
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :code, :description, :image, :cost, :quantity, category_ids: [])
    end
end
