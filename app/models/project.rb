class Project < ApplicationRecord
#Project: title (required & unique), description and due_date
validates(:title, presence: true, uniqueness: {case_sensitive: false})
end
