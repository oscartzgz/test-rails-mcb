class HasOcupationsController < ApplicationController
  before_action :set_has_ocupation, only: [:show, :edit, :update, :destroy]

  # GET /has_ocupations
  # GET /has_ocupations.json
  def index
    @has_ocupations = HasOcupation.all
  end

  # GET /has_ocupations/1
  # GET /has_ocupations/1.json
  def show
  end

  # GET /has_ocupations/new
  def new
    @ocupations = Ocupation.all
    @has_ocupation = HasOcupation.new
  end

  # GET /has_ocupations/1/edit
  def edit
  end

  # POST /has_ocupations
  # POST /has_ocupations.json
  def create
    @ocupations = Ocupation.all
    @has_ocupation = HasOcupation.new(has_ocupation_params)
    @selected_ocupations = has_ocupation_params[:ocupation_id]
    @ok = false

    @selected_ocupations.each do |ocupation_id|
      @ok = true if HasOcupation.create(worker_id: has_ocupation_params[:worker_id], ocupation_id: ocupation_id)
    end if !@selected_ocupations.nil?


    respond_to do |format|
      if @ok
        format.html { redirect_to @has_ocupation, notice: 'Has ocupation was successfully created.' }
        format.json { render :show, status: :created, location: @has_ocupation }
      else
        format.html { render :new }
        format.json { render json: @has_ocupation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /has_ocupations/1
  # PATCH/PUT /has_ocupations/1.json
  def update
    respond_to do |format|
      if @has_ocupation.update(has_ocupation_params)
        format.html { redirect_to @has_ocupation, notice: 'Has ocupation was successfully updated.' }
        format.json { render :show, status: :ok, location: @has_ocupation }
      else
        format.html { render :edit }
        format.json { render json: @has_ocupation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /has_ocupations/1
  # DELETE /has_ocupations/1.json
  def destroy
    @has_ocupation.destroy
    respond_to do |format|
      format.html { redirect_to has_ocupations_url, notice: 'Has ocupation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_has_ocupation
      @has_ocupation = HasOcupation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def has_ocupation_params
      params.require(:has_ocupation).permit(:worker_id, ocupation_id:[])
    end
end
