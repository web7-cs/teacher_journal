class TeachingIdeasController < ApplicationController
  before_action :set_teaching_idea, only: [:show, :edit, :update, :destroy]

  # GET /teaching_ideas
  # GET /teaching_ideas.json
  def index
    @teaching_ideas = TeachingIdea.all
  end

  # GET /teaching_ideas/1
  # GET /teaching_ideas/1.json
  def show
  end

  # GET /teaching_ideas/new
  def new
    @teaching_idea = TeachingIdea.new
  end

  # GET /teaching_ideas/1/edit
  def edit
  end

  # POST /teaching_ideas
  # POST /teaching_ideas.json
  def create
    @teaching_idea = TeachingIdea.new(teaching_idea_params)

    respond_to do |format|
      if @teaching_idea.save
        format.html { redirect_to @teaching_idea, notice: 'Teaching idea was successfully created.' }
        format.json { render :show, status: :created, location: @teaching_idea }
      else
        format.html { render :new }
        format.json { render json: @teaching_idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teaching_ideas/1
  # PATCH/PUT /teaching_ideas/1.json
  def update
    respond_to do |format|
      if @teaching_idea.update(teaching_idea_params)
        format.html { redirect_to @teaching_idea, notice: 'Teaching idea was successfully updated.' }
        format.json { render :show, status: :ok, location: @teaching_idea }
      else
        format.html { render :edit }
        format.json { render json: @teaching_idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teaching_ideas/1
  # DELETE /teaching_ideas/1.json
  def destroy
    @teaching_idea.destroy
    respond_to do |format|
      format.html { redirect_to teaching_ideas_url, notice: 'Teaching idea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teaching_idea
      @teaching_idea = TeachingIdea.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def teaching_idea_params
      params.require(:teaching_idea).permit(:title, :content)
    end
end
