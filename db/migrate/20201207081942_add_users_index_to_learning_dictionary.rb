class AddUsersIndexToLearningDictionary < ActiveRecord::Migration[6.0]
  def change
    add_reference :learning_dictionaries, :user, null: false, foreign_key: true
  end
end
