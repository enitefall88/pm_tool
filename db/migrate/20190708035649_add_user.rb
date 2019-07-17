class AddUser < ActiveRecord::Migration[5.2]
  def change
  add_reference :discussions, :user, foreign_key: true 
  add_reference :projects, :user, foreign_key: true 
  add_reference :tasks, :user, foreign_key: true 
  add_reference :comments, :user, foreign_key: true 
  end
end
