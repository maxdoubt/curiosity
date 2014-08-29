class LessonItemsController < ApplicationController
  before_action :set_lesson_item, only: [:show, :edit, :update, :destroy]

  # GET /lesson_items
  # GET /lesson_items.json
  def index
    @lesson_items = LessonItem.all
  end

  # GET /lesson_items/1
  # GET /lesson_items/1.json
  def show
  end

  # GET /lesson_items/new
  def new
    @lesson_item = LessonItem.new
  end

  # GET /lesson_items/1/edit
  def edit
  end

  # POST /lesson_items
  # POST /lesson_items.json
  def create
    @lesson_item = LessonItem.new(lesson_item_params)
    @box = @lesson_item.lesson_template_box
    @lesson = @lesson_item.lesson

    respond_to do |format|
      if @lesson_item.save
        format.html { redirect_to @lesson_item, notice: 'Lesson item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lesson_item }
        format.js
      else
        format.html { render action: 'new' }
        format.json { render json: @lesson_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_items/1
  # PATCH/PUT /lesson_items/1.json
  def update
    respond_to do |format|
      if @lesson_item.update(lesson_item_params)
        format.html { redirect_to @lesson_item, notice: 'Lesson item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lesson_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_items/1
  # DELETE /lesson_items/1.json
  def destroy
    @lesson_item.destroy
    respond_to do |format|
      format.html { redirect_to lesson_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_item
      @lesson_item = LessonItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_item_params
      params.require(:lesson_item).permit(:content, :lesson_id, :lesson_template_box_id, :user_id, :parent_id, :lft, :rgt, :depth)
    end
end
