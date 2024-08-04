class NotificationWorker
  include Sidekiq::Worker

  def perform(task_uuid, user_email, status)
    Notification.create(task_uuid: task_uuid, user_email: user_email, status: status)
  end
end
