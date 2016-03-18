class Subtask < ActiveRecord::Base
  belongs_to :task
  validates :task_id, presence: true
  validates :name, presence: true, 
            length: { minimum: 3, maximum: 30 }
end