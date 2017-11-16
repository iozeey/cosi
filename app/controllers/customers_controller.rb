class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.all
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
    find_in_radius
    @Restaurant
    #@Actual_Distance
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:order, :address, :latitude, :longitude)
    end

    def find_in_radius
      @Restaurant = Location.all
    #   distance = []
    #   nearestZones = []
    #   @customer = Customer.find(params[:id])
    #   @locations = Location.all

    #   for location in @locations.each
    #     @point2 = location.address
    #     @point1 = @customer.address
    #     currentDistance = Geocoder::Calculations.distance_between(@point1, @point2)
    #     if currentDistance < (10)
    #       distance.push(currentDistance)
    #       nearestZones.push(location)
    #     end
    #   end

    #   if nearestZones.length > 0
    #     @Restaurant = nearestZones
    #     @Actual_Distance = distance
    #   else
    #     flash[:notice] = "Sorry, You are not in any Restaurant Zone."
    #   end
    end
end
