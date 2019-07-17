class ChahgeDiscussions < ActiveRecord::Migration[5.2]
  def change
    remove_column :discussions, :description
    add_column :discussions, :body, :text 
    add_reference :comments, :discussion, foreign_key: true
  end
end
