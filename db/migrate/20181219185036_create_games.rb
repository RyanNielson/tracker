class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title
      t.string :platform
      t.text :thoughts
      t.string :rating
      t.date :released_on
      t.date :completed_on

      t.timestamps
    end
  end
end
