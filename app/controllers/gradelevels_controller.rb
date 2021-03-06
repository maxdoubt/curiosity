class GradelevelsController < ApplicationController
  before_action :set_gradelevel, only: [:show, :edit, :update, :destroy]

  # GET /gradelevels
  # GET /gradelevels.json
  def index
    @gradelevels = Gradelevel.all
  end

  # GET /gradelevels/1
  # GET /gradelevels/1.json
  def show
  end

  # GET /gradelevels/new
  def new
    @gradelevel = Gradelevel.new
  end

  # GET /gradelevels/1/edit
  def edit
  end

  # POST /gradelevels
  # POST /gradelevels.json
  def create
    @gradelevel = Gradelevel.new(gradelevel_params)

    respond_to do |format|
      if @gradelevel.save
        format.html { redirect_to gradelevels_path, notice: 'Gradelevel was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gradelevel }
      else
        format.html { render action: 'new' }
        format.json { render json: @gradelevel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gradelevels/1
  # PATCH/PUT /gradelevels/1.json
  def update
    respond_to do |format|
      if @gradelevel.update(gradelevel_params)
        format.html { redirect_to @gradelevel, notice: 'Gradelevel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gradelevel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gradelevels/1
  # DELETE /gradelevels/1.json
  def destroy
    @gradelevel.destroy
    respond_to do |format|
      format.html { redirect_to gradelevels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gradelevel
      @gradelevel = Gradelevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gradelevel_params
      params.require(:gradelevel).permit(:name, :abbrev, :number)
    end
end
