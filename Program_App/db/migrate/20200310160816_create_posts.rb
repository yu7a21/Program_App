class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :content
      t.integer :user_id
      t.integer :diffuclt
      t.text :hint
      t.text :answer
      t.integer :answer_la

      t.timestamps
    end
  end
end
