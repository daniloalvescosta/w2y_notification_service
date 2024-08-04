class NotificationWorker
  include Sidekiq::Worker

  def perform(options = {})
    options = options.gsub("=>",":")
    options = JSON.parse(options)

    Notification.create(task_uuid: options["task_uuid"], user_email: options["user_email"], status: options["status"])
  end
end
