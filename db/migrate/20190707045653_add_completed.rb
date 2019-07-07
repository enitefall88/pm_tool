class AddCompleted < ActiveRecord::Migration[5.2]

  def change_add_completion
    add_column :tasks, :completed, :boolean, default: true
  end
end
