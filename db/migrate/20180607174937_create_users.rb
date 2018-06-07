class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :user_major
      t.string :user_number
      t.string :user_name
      t.integer :user_time
      t.integer :counter
      t.timestamps null: false
    end
  end
end
