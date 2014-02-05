class StandardkindsController < ApplicationController
  before_action :set_standardkind, only: [:show, :edit, :update, :destroy]

  # GET /standardkinds
  # GET /standardkinds.json
  def index
    @standardkinds = Standardkind.all
  end

  # GET /standardkinds/1
  # GET /standardkinds/1.json
  def show
  end

  # GET /standardkinds/new
  def new
    @standardkind = Standardkind.new
  end

  # GET /standardkinds/1/edit
  def edit
  end

  # POST /standardkinds
  # POST /standardkinds.json
  def create
    @standardkind = Standardkind.new(standardkind_params)

    respond_to do |format|
      if @standardkind.save
        format.html { redirect_to @standardkind, notice: 'Standardkind was successfully created.' }
        format.json { render action: 'show', status: :created, location: @standardkind }
      else
        format.html { render action: 'new' }
        format.json { render json: @standardkind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /standardkinds/1
  # PATCH/PUT /standardkinds/1.json
  def update
    respond_to do |format|
      if @standardkind.update(standardkind_params)
        format.html { redirect_to @standardkind, notice: 'Standardkind was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @standardkind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /standardkinds/1
  # DELETE /standardkinds/1.json
  def destroy
    @standardkind.destroy
    respond_to do |format|
      format.html { redirect_to standardkinds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_standardkind
      @standardkind = Standardkind.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def standardkind_params
      params.require(:standardkind).permit(:name)
    end
end
