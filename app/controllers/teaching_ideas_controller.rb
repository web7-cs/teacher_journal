class TeachingIdeasController < InheritedResources::Base

  private

    def teaching_idea_params
      params.require(:teaching_idea).permit(:title, :content)
    end

end
