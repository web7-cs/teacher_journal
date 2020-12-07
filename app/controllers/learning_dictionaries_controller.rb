class LearningDictionariesController < ApplicationController
  before_action :set_learning_dictionary, only: [:show, :edit, :update, :destroy]

  # GET /learning_dictionaries
  # GET /learning_dictionaries.json
  def index
    @learning_dictionaries = LearningDictionary.all
  end

  # GET /learning_dictionaries/1
  # GET /learning_dictionaries/1.json
  def show
  end

  # GET /learning_dictionaries/new
  def new
    @learning_dictionary = LearningDictionary.new
  end

  # GET /learning_dictionaries/1/edit
  def edit
  end

  # POST /learning_dictionaries
  # POST /learning_dictionaries.json
  def create
    @learning_dictionary = LearningDictionary.new(learning_dictionary_params)
    if current_user
      respond_to do |format|
        if @learning_dictionary.save
          format.html { redirect_to @learning_dictionary, notice: 'Learning dictionary was successfully created.' }
          format.json { render :show, status: :created, location: @learning_dictionary }
        else
          format.html { render :new }
          format.json { render json: @learning_dictionary.errors, status: :unprocessable_entity }
        end
      end
  end
  end

  # PATCH/PUT /learning_dictionaries/1
  # PATCH/PUT /learning_dictionaries/1.json
  def update
    respond_to do |format|
      if @learning_dictionary.update(learning_dictionary_params)
        format.html { redirect_to @learning_dictionary, notice: 'Learning dictionary was successfully updated.' }
        format.json { render :show, status: :ok, location: @learning_dictionary }
      else
        format.html { render :edit }
        format.json { render json: @learning_dictionary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /learning_dictionaries/1
  # DELETE /learning_dictionaries/1.json
  def destroy
    @learning_dictionary.destroy
    respond_to do |format|
      format.html { redirect_to learning_dictionaries_url, notice: 'Learning dictionary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_learning_dictionary
      @learning_dictionary = LearningDictionary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def learning_dictionary_params
      params.require(:learning_dictionary).permit(:title, :definition, :content)
    end
end