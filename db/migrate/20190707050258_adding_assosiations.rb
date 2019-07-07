class AddingAssosiations < ActiveRecord::Migration[5.2]
  def change
    add_reference :projects, :task, foreign_key: true
  end
end
