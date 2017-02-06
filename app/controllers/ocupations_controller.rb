class OcupationsController < ApplicationController
  before_action :set_ocupation, only: [:show, :edit, :update, :destroy]

  # GET /ocupations
  # GET /ocupations.json
  def index
    @ocupations = Ocupation.all
  end

  # GET /ocupations/1
  # GET /ocupations/1.json
  def show
  end

  # GET /ocupations/new
  def new
    @ocupation = Ocupation.new
  end

  # GET /ocupations/1/edit
  def edit
  end

  # POST /ocupations
  # POST /ocupations.json
  def create
    @ocupation = Ocupation.new(ocupation_params)

    respond_to do |format|
      if @ocupation.save
        format.html { redirect_to @ocupation, notice: 'Ocupation was successfully created.' }
        format.json { render :show, status: :created, location: @ocupation }
      else
        format.html { render :new }
        format.json { render json: @ocupation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ocupations/1
  # PATCH/PUT /ocupations/1.json
  def update
    respond_to do |format|
      if @ocupation.update(ocupation_params)
        format.html { redirect_to @ocupation, notice: 'Ocupation was successfully updated.' }
        format.json { render :show, status: :ok, location: @ocupation }
      else
        format.html { render :edit }
        format.json { render json: @ocupation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ocupations/1
  # DELETE /ocupations/1.json
  def destroy
    @ocupation.destroy
    respond_to do |format|
      format.html { redirect_to ocupations_url, notice: 'Ocupation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ocupation
      @ocupation = Ocupation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ocupation_params
      params.require(:ocupation).permit(:name)
    end
end
