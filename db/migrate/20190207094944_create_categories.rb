class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|

      t.string :category, null: false
      t.string :image_id
      t.timestamps
    end
  end
end
