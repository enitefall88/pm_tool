class Task < ApplicationRecord
validates(:title, presence: true, uniqueness: {case_sensitive: false})
belongs_to :project
end
