class Task < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :user
  validates :user_id, presence: true
=======
  has_many :subtasks
>>>>>>> collapsible-index
end