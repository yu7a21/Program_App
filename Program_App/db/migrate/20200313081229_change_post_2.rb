class ChangePost2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :answer_la, :integer
    add_column :posts, :answer_la, :text
  end
end
