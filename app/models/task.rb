class Task < ActiveRecord::Base
  belongs_to :user
  has_many :subtasks
  # validates :user_id, presence: true uncomment when we can create a user
  validates :name, presence: true, 
            length: { minimum: 3, maximum: 30 }
end