class FixAssociations < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :project, foreign_key: true # tasks will be connected to projects not vice versa
  end
end
