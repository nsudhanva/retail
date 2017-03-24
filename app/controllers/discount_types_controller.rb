class DiscountTypesController < ApplicationController
  before_action :set_discount_type, only: [:show, :edit, :update, :destroy]

  # GET /discount_types
  # GET /discount_types.json
  def index
    @discount_types = DiscountType.all
  end

  # GET /discount_types/1
  # GET /discount_types/1.json
  def show
  end

  # GET /discount_types/new
  def new
    @discount_type = DiscountType.new
  end

  # GET /discount_types/1/edit
  def edit
  end

  # POST /discount_types
  # POST /discount_types.json
  def create
    @discount_type = DiscountType.new(discount_type_params)

    respond_to do |format|
      if @discount_type.save
        format.html { redirect_to @discount_type, notice: 'Discount type was successfully created.' }
        format.json { render :show, status: :created, location: @discount_type }
      else
        format.html { render :new }
        format.json { render json: @discount_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discount_types/1
  # PATCH/PUT /discount_types/1.json
  def update
    respond_to do |format|
      if @discount_type.update(discount_type_params)
        format.html { redirect_to @discount_type, notice: 'Discount type was successfully updated.' }
        format.json { render :show, status: :ok, location: @discount_type }
      else
        format.html { render :edit }
        format.json { render json: @discount_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discount_types/1
  # DELETE /discount_types/1.json
  def destroy
    @discount_type.destroy
    respond_to do |format|
      format.html { redirect_to discount_types_url, notice: 'Discount type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discount_type
      @discount_type = DiscountType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discount_type_params
      params.require(:discount_type).permit(:name, :percentage, :amount)
    end
end
