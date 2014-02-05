class StandardsController < ApplicationController
  before_action :set_standard, only: [:show, :edit, :update, :destroy]

  # GET /standards
  # GET /standards.json
  def index
    @standards = Standard.all
  end

  # GET /standards/1
  # GET /standards/1.json
  def show
  end

  # GET /standards/new
  def new
    @standard = Standard.new
  end

  # GET /standards/1/edit
  def edit
  end

  # POST /standards
  # POST /standards.json
  def create
    @standard = Standard.new(standard_params)

    respond_to do |format|
      if @standard.save
        format.html { redirect_to @standard, notice: 'Standard was successfully created.' }
        format.json { render action: 'show', status: :created, location: @standard }
      else
        format.html { render action: 'new' }
        format.json { render json: @standard.errors, status: :unprocessable_entity }
      end
    end
  end


  def import_cc
    require 'open-uri'

    ela = Nokogiri::XML(open("http://www.corestandards.org/ela-literacy.xml"))
    
    @standards = ela.xpath("//LearningStandardItem")

    @standards.each_with_index do |standard, i|
      @standard = Standard.new

      @standard.statement = standard.xpath("Statements/Statement")[0].content.to_s
      @standard.statement_code = standard.xpath("StatementCodes/StatementCode")[0].content.to_s
      @standard.ref_uri = standard.xpath("RefURI")[0].content.to_s
      @standard.ref_id = standard.xpath("@RefID").to_s
      @standard.lang = standard.xpath("@xml:lang").to_s
      #@gradelevels = standard.xpath("GradeLevels/GradeLevel")
      @standard.learning_standard_document_ref_id = standard.xpath("LearningStandardDocumentRefId")[0].content.to_s
      @learning_standard_item_ref_id = standard.xpath("RelatedLearningStandardItems/LearningStandardItemRefId")
      if @learning_standard_item_ref_id != nil and @learning_standard_item_ref_id[0] != nil
        @standard.learning_standard_item_ref_id = @learning_standard_item_ref_id[0].content.to_s
        @standard.relationship_type = @learning_standard_item_ref_id.xpath("@RelationshipType").to_s
      end
      @standard.number = standard.xpath("StandardHierarchyLevel/number")[0].content.to_s
      @standard.description = standard.xpath("StandardHierarchyLevel/description")[0].content.to_s

      @standard.standardkind_id = 1
      @standard.subject_id = 2

      # break apart the code
      split_code = @standard.statement_code.split(".")
      @standard.initiative = split_code[0]
      @standard.framework = split_code[1]
      @standard.domain = split_code[2]
            
      # set domains
      case @standard.domain
      when "CCRA"
        @standard.domain_description = "College and Career Readiness Anchors"
      when "RL"
        @standard.domain_description = "Reading Literature"
      when "RI"
        @standard.domain_description = "Reading Information Text"
      when "RF"
        @standard.domain_description = "Reading Foundational Skills"
      when "W"
        @standard.domain_description = "Writing"
      when "SL"
        @standard.domain_description = "Speaking & Listening"
      when "L"
        @standard.domain_description = "Language"
      when "RH"
        @standard.domain_description = "History / Social Studies"
      when "RST"
        @standard.domain_description = "Science & Technical Subjects"
      when "WHST"
        @standard.domain_description = "Writing (History / Social Studies, Science & Technical Subjects)"
      end
      
      @standard.grade = split_code[3]
      @standard.standard = split_code[4]
      @standard.component = split_code[5]

      @standard.save  
    end
        
    # match children to parents
    @standards = Standard.find(:all, :conditions => ['standardkind_id = 1 and subject_id = 2'])
    @standards.each do |standard|
      @parent = Standard.find(:first, :conditions => ['ref_id = ?', standard.learning_standard_item_ref_id])
      if @parent != nil
        standard.parent_id = @parent.id
        standard.save
      end
    end


    redirect_to standards_path    
  end

  # PATCH/PUT /standards/1
  # PATCH/PUT /standards/1.json
  def update
    respond_to do |format|
      if @standard.update(standard_params)
        format.html { redirect_to @standard, notice: 'Standard was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @standard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /standards/1
  # DELETE /standards/1.json
  def destroy
    @standard.destroy
    respond_to do |format|
      format.html { redirect_to standards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_standard
      @standard = Standard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def standard_params
      params.require(:standard).permit(:lang, :ref_id, :ref_uri, :number, :description, :statement_code, :statement, :learning_standard_document_ref_id, :learning_standard_item_ref_id, :relationship_type, :standardkind_id, :parent_id, :lft, :rgt, :depth, :subject_id, :iniative, :framework, :set, :grade, :domain, :domain_desciption, :cluster, :standard, :component)
    end
end
