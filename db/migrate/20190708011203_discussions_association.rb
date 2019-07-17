class DiscussionsAssociation < ActiveRecord::Migration[5.2]
  def change
  add_reference :discussions, :project, foreign_key: true
  end
end
