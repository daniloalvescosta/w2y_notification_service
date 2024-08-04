class Notification < ApplicationRecord
  validates :task_uuid, presence: true
  validates :user_email, presence: true
  validates :status, presence: true
end
