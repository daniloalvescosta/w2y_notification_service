class CreateNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :notifications do |t|
      t.string :task_uuid
      t.string :user_email
      t.string :status

      t.timestamps
    end
  end
end
