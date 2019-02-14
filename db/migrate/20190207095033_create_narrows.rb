class CreateNarrows < ActiveRecord::Migration[5.2]
  def change
    create_table :narrows do |t|

      t.integer :hobby_id, null: false
      t.integer :active_point, null: false
      t.integer :major_point, null: false
      t.integer :gain_point, null: false
      t.integer :appeal_point, null: false
      t.integer :health_point, null: false
      t.integer :relax_point, null: false
      t.integer :concentration_point, null: false
      t.integer :cooperate_point, null: false
      t.integer :consider_point, null: false
      t.integer :cost_point, null: false
      t.integer :artistic_point, null: false
      t.timestamps
    end
  end
end
