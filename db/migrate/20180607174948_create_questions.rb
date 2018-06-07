class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      
      t.text :q_question
      t.text :q_answer
      t.text :q_hint, default: ""
      t.timestamps null: false
    end
  end
end
