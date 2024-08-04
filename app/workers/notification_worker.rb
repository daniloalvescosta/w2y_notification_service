class NotificationWorker
  include Sidekiq::Worker

  def perform(options = {})
    options = options.gsub("=>",":")
    options = JSON.parse(options)

    notification = Notification.find_or_create_by(task_uuid: options["task_uuid"], user_email: options["user_email"])
    notification.update(status: options["status"])
  end
end
