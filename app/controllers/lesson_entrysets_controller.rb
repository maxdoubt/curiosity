class LessonEntrysetsController < ApplicationController
  before_action :set_lesson_entryset, only: [:show, :edit, :update, :destroy]

  # GET /lesson_entrysets
  # GET /lesson_entrysets.json
  def index
    @lesson_entryset = LessonEntryset.find_by_id(2)
    @lesson_entrysets = @lesson_entryset.descendants
  end

  # GET /lesson_entrysets/1
  # GET /lesson_entrysets/1.json
  def show
  end

  # GET /lesson_entrysets/new
  def new
    @lesson_entryset = LessonEntryset.new
  end

  # GET /lesson_entrysets/1/edit
  def edit
  end

  # POST /lesson_entrysets
  # POST /lesson_entrysets.json
  def create
    @lesson_entryset = LessonEntryset.new(lesson_entryset_params)

    respond_to do |format|
      if @lesson_entryset.save
        format.html { redirect_to @lesson_entryset, notice: 'Lesson entryset was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lesson_entryset }
      else
        format.html { render action: 'new' }
        format.json { render json: @lesson_entryset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_entrysets/1
  # PATCH/PUT /lesson_entrysets/1.json
  def update
    respond_to do |format|
      if @lesson_entryset.update(lesson_entryset_params)
        format.html { redirect_to @lesson_entryset, notice: 'Lesson entryset was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lesson_entryset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_entrysets/1
  # DELETE /lesson_entrysets/1.json
  def destroy
    @lesson_entryset.destroy
    respond_to do |format|
      format.html { redirect_to lesson_entrysets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_entryset
      @lesson_entryset = LessonEntryset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_entryset_params
      params.require(:lesson_entryset).permit(:name, :parent_id, :lft, :rgt, :depth)
    end
end
