class CreateCommunities < ActiveRecord::Migration[5.2]
  def change
    create_table :communities do |t|

      t.integer :hobby_id, null: false
      t.integer :user_id, null: false
      t.string :name, null: false
      t.string :level, null: false
      t.text :introduction, null: false
      t.timestamps
    end
  end
end
