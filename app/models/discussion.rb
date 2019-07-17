class Discussion < ApplicationRecord
validates(:title, presence: true)
validates(:description, presence: true)
has_many :comments
belongs_to :project
belongs_to :users
end
