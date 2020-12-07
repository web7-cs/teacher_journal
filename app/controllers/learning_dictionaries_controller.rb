class LearningDictionariesController < InheritedResources::Base

  private

    def learning_dictionary_params
      params.require(:learning_dictionary).permit(:title, :definition, :content)
    end

end
