class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|

      t.integer :user_id, null: false
      t.integer :hobby_id, null: false
      t.integer :time, null: false
      t.date :date, null: false
      t.text :comment
      t.timestamps
    end
  end
end
