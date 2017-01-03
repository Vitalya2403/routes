class RailwayStatoinsController < ApplicationController
  before_action :set_railway_statoin, only: [:show, :edit, :update, :destroy]

  # GET /railway_statoins
  # GET /railway_statoins.json
  def index
    @railway_statoins = RailwayStatoin.all
  end

  # GET /railway_statoins/1
  # GET /railway_statoins/1.json
  def show
  end

  # GET /railway_statoins/new
  def new
    @railway_statoin = RailwayStatoin.new
  end

  # GET /railway_statoins/1/edit
  def edit
  end

  # POST /railway_statoins
  # POST /railway_statoins.json
  def create
    @railway_statoin = RailwayStatoin.new(railway_statoin_params)

    respond_to do |format|
      if @railway_statoin.save
        format.html { redirect_to @railway_statoin, notice: 'Railway statoin was successfully created.' }
        format.json { render :show, status: :created, location: @railway_statoin }
      else
        format.html { render :new }
        format.json { render json: @railway_statoin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /railway_statoins/1
  # PATCH/PUT /railway_statoins/1.json
  def update
    respond_to do |format|
      if @railway_statoin.update(railway_statoin_params)
        format.html { redirect_to @railway_statoin, notice: 'Railway statoin was successfully updated.' }
        format.json { render :show, status: :ok, location: @railway_statoin }
      else
        format.html { render :edit }
        format.json { render json: @railway_statoin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /railway_statoins/1
  # DELETE /railway_statoins/1.json
  def destroy
    @railway_statoin.destroy
    respond_to do |format|
      format.html { redirect_to railway_statoins_url, notice: 'Railway statoin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_railway_statoin
      @railway_statoin = RailwayStatoin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def railway_statoin_params
      params.require(:railway_statoin).permit(:title)
    end
end
