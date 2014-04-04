class DaykindsController < ApplicationController
  before_action :set_daykind, only: [:show, :edit, :update, :destroy]

  # GET /daykinds
  # GET /daykinds.json
  def index
    @daykinds = Daykind.all
  end

  # GET /daykinds/1
  # GET /daykinds/1.json
  def show
  end

  # GET /daykinds/new
  def new
    @daykind = Daykind.new
  end

  # GET /daykinds/1/edit
  def edit
  end

  # POST /daykinds
  # POST /daykinds.json
  def create
    @daykind = Daykind.new(daykind_params)

    respond_to do |format|
      if @daykind.save
        format.html { redirect_to @daykind, notice: 'Daykind was successfully created.' }
        format.json { render action: 'show', status: :created, location: @daykind }
      else
        format.html { render action: 'new' }
        format.json { render json: @daykind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daykinds/1
  # PATCH/PUT /daykinds/1.json
  def update
    respond_to do |format|
      if @daykind.update(daykind_params)
        format.html { redirect_to @daykind, notice: 'Daykind was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @daykind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daykinds/1
  # DELETE /daykinds/1.json
  def destroy
    @daykind.destroy
    respond_to do |format|
      format.html { redirect_to daykinds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daykind
      @daykind = Daykind.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daykind_params
      params.require(:daykind).permit(:name, :school_id, :semester_id)
    end
end
