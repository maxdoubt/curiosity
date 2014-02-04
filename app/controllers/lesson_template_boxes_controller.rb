class LessonTemplateBoxesController < ApplicationController
  before_action :set_lesson_template_box, only: [:show, :edit, :update, :destroy]

  # GET /lesson_template_boxes
  # GET /lesson_template_boxes.json
  def index
    @lesson_template_boxes = LessonTemplateBox.all
  end

  # GET /lesson_template_boxes/1
  # GET /lesson_template_boxes/1.json
  def show
  end

  # GET /lesson_template_boxes/new
  def new
    @lesson_template_box = LessonTemplateBox.new
  end

  # GET /lesson_template_boxes/1/edit
  def edit
  end

  # POST /lesson_template_boxes
  # POST /lesson_template_boxes.json
  def create
    @lesson_template_box = LessonTemplateBox.find(:first, :conditions => ['lesson_template_id = ? and lesson_entryset_id = ?', params[:lesson_template_box][:lesson_template_id],params[:lesson_template_box][:lesson_entryset_id]])


    if @lesson_template_box == nil
      @lesson_template_box = LessonTemplateBox.new(lesson_template_box_params)
      @lesson_template_box.row = 1
      @lesson_template_box.col = 1
      @lesson_template_box.rowspan = 1
      @lesson_template_box.colspan = 1
    end

    @lesson_template_box.active = true


    respond_to do |format|
      if @lesson_template_box.save
        format.html { redirect_to @lesson_template_box, notice: 'Lesson template box was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lesson_template_box }
      else
        format.html { render action: 'new' }
        format.json { render json: @lesson_template_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_template_boxes/1
  # PATCH/PUT /lesson_template_boxes/1.json
  def update
    respond_to do |format|
      if @lesson_template_box.update(lesson_template_box_params)
        format.html { redirect_to @lesson_template_box, notice: 'Lesson template box was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lesson_template_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_template_boxes/1
  # DELETE /lesson_template_boxes/1.json
  def destroy
    @lesson_template_box.destroy
    respond_to do |format|
      format.html { redirect_to lesson_template_boxes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_template_box
      @lesson_template_box = LessonTemplateBox.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_template_box_params
      params.require(:lesson_template_box).permit(:lesson_template_id, :lesson_entryset_id, :row, :col, :rowspan, :colspan, :active)
    end
end
