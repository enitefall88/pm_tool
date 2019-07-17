class Project < ApplicationRecord
#Project: title (required & unique), description and due_date
validates(:title, presence: true, uniqueness: {case_sensitive: false})
has_many :tasks
has_many :discussions
belongs_to :users
end
