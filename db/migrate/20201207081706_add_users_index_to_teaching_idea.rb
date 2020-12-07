class AddUsersIndexToTeachingIdea < ActiveRecord::Migration[6.0]
  def change
    add_reference :teaching_ideas, :user, null: false, foreign_key: true
  end
end

