class CreateHobbies < ActiveRecord::Migration[5.2]
  def change
    create_table :hobbies do |t|

      t.string :name, null: false
      t.string :image_id
      t.integer :category_id, null: false
      t.string :introduction, null: false
      t.timestamps
    end
  end
end
