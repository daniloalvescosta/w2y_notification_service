class NotificationsController < ApplicationController
  def create
    NotificationWorker.perform_async(notification_params)

    render json: { message: 'Notification created successfully' }, status: :created
  end

  private

  def notification_params
    params.require(:notification).permit(:task_uuid, :user_email, :status)
  end
end
