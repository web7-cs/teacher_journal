class CreateTeachingIdeas < ActiveRecord::Migration[6.0]
  def change
    create_table :teaching_ideas do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
