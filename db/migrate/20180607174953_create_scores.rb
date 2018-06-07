class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|

      t.string :major
      t.string :number
      t.string :name
      t.integer :clear, default: 9999, null: false
      t.integer :clear_m, default: 0, null: false
      t.integer :clear_s, default: 0, null: false
      t.timestamps null: false
    end
  end
end
