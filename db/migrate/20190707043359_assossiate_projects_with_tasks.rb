class AssossiateProjectsWithTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :body, :text
  end

  def change_add_completion
    add_column :tasks, :completed, :boolean
  end
end
