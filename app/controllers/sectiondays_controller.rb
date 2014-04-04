class SectiondaysController < ApplicationController
  before_action :set_sectionday, only: [:show, :edit, :update, :destroy]

  # GET /sectiondays
  # GET /sectiondays.json
  def index
    @sectiondays = Sectionday.all
  end

  # GET /sectiondays/1
  # GET /sectiondays/1.json
  def show
  end

  # GET /sectiondays/new
  def new
    @sectionday = Sectionday.new
  end

  # GET /sectiondays/1/edit
  def edit
  end

  # POST /sectiondays
  # POST /sectiondays.json
  def create
    @sectionday = Sectionday.new(sectionday_params)

    respond_to do |format|
      if @sectionday.save
        format.html { redirect_to @sectionday, notice: 'Sectionday was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sectionday }
      else
        format.html { render action: 'new' }
        format.json { render json: @sectionday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sectiondays/1
  # PATCH/PUT /sectiondays/1.json
  def update
    respond_to do |format|
      if @sectionday.update(sectionday_params)
        format.html { redirect_to @sectionday, notice: 'Sectionday was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sectionday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sectiondays/1
  # DELETE /sectiondays/1.json
  def destroy
    @sectionday.destroy
    respond_to do |format|
      format.html { redirect_to sectiondays_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sectionday
      @sectionday = Sectionday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sectionday_params
      params.require(:sectionday).permit(:daykind_id, :begin_time, :end_time)
    end
end
