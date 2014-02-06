class StandardDomainsController < ApplicationController
  before_action :set_standard_domain, only: [:show, :edit, :update, :destroy]

  # GET /standard_domains
  # GET /standard_domains.json
  def index
    @standard_domains = StandardDomain.all
  end

  # GET /standard_domains/1
  # GET /standard_domains/1.json
  def show
  end

  # GET /standard_domains/new
  def new
    @standard_domain = StandardDomain.new
  end

  # GET /standard_domains/1/edit
  def edit
  end

  # POST /standard_domains
  # POST /standard_domains.json
  def create
    @standard_domain = StandardDomain.new(standard_domain_params)

    respond_to do |format|
      if @standard_domain.save
        format.html { redirect_to standard_domains_path, notice: 'Standard domain was successfully created.' }
        format.json { render action: 'show', status: :created, location: @standard_domain }
      else
        format.html { render action: 'new' }
        format.json { render json: @standard_domain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /standard_domains/1
  # PATCH/PUT /standard_domains/1.json
  def update
    respond_to do |format|
      if @standard_domain.update(standard_domain_params)
        format.html { redirect_to @standard_domain, notice: 'Standard domain was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @standard_domain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /standard_domains/1
  # DELETE /standard_domains/1.json
  def destroy
    @standard_domain.destroy
    respond_to do |format|
      format.html { redirect_to standard_domains_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_standard_domain
      @standard_domain = StandardDomain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def standard_domain_params
      params.require(:standard_domain).permit(:subject_id, :standardkind_id, :name, :abbrev)
    end
end
