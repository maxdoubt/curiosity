class LessonTemplatesController < ApplicationController
  before_action :set_lesson_template, only: [:show, :edit, :update, :destroy]

  # GET /lesson_templates
  # GET /lesson_templates.json
  def index
    @lesson_templates = LessonTemplate.all
  end

  # GET /lesson_templates/1
  # GET /lesson_templates/1.json
  def show
    @lesson_entrysets = LessonEntryset.root.descendants
  end

  # GET /lesson_templates/new
  def new
    @lesson_template = LessonTemplate.new
  end

  # GET /lesson_templates/1/edit
  def edit
  end

  # POST /lesson_templates
  # POST /lesson_templates.json
  def create
    @lesson_template = LessonTemplate.new(lesson_template_params)

    respond_to do |format|
      if @lesson_template.save
        format.html { redirect_to @lesson_template, notice: 'Lesson template was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lesson_template }
      else
        format.html { render action: 'new' }
        format.json { render json: @lesson_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_templates/1
  # PATCH/PUT /lesson_templates/1.json
  def update
    respond_to do |format|
      if @lesson_template.update(lesson_template_params)
        format.html { redirect_to @lesson_template, notice: 'Lesson template was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lesson_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_templates/1
  # DELETE /lesson_templates/1.json
  def destroy
    @lesson_template.destroy
    respond_to do |format|
      format.html { redirect_to lesson_templates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_template
      @lesson_template = LessonTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_template_params
      params.require(:lesson_template).permit(:name, :description, :rows, :cols)
    end
end
