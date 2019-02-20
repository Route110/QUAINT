class CreateHobbiesRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :hobbies_ratings do |t|

      t.integer :hobby_id, null: false
      t.integer :rating_id, null: false
      t.integer :point, null: false
      t.timestamps
    end
  end
end
