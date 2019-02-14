class CreateUsersHobbies < ActiveRecord::Migration[5.2]
  def change
    create_table :users_hobbies do |t|

      t.integer :user_id, null: false
      t.integer :hobby_id, null: false
      t.timestamps
    end
  end
end
