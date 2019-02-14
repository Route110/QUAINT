class CreateFirstSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :first_steps do |t|

   	  t.integer :hobby_id, null: false
   	  t.text :introduction, null: false
   	  t.string :item
   	  t.integer :cost, defalut: 0
      t.timestamps
    end
  end
end
