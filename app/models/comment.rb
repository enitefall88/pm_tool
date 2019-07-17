class Comment < ApplicationRecord
    validates(:body, presence: true)
belongs_to :discussion
belongs_to :users
end
