class CreateLearningTheoryDictionaries < ActiveRecord::Migration[6.0]
  def change
    create_table :learning_theory_dictionaries do |t|
      t.string :name
      t.text :definition
      t.text :content

      t.timestamps
    end
  end
end
