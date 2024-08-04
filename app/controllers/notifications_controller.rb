class NotificationsController < ApplicationController
  def create
    NotificationWorker.perform_async(notification_params)

    render json: { message: 'Notification created successfully' }, status: :created
  end

  def index
    render json: Notification.all, status: :ok
  end

  private

  def notification_params
    params.require(:notification).permit(:task_uuid, :user_email, :status)
  end
end
