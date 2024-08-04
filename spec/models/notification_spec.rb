# spec/models/notification_spec.rb
require 'rails_helper'

RSpec.describe Notification, type: :model do
  it 'has a valid factory' do
    notification = FactoryBot.build(:notification)
    expect(notification).to be_valid
  end

  it 'is invalid without a task_uuid' do
    notification = FactoryBot.build(:notification, task_uuid: nil)
    expect(notification).not_to be_valid
  end

  it 'is invalid without a user_email' do
    notification = FactoryBot.build(:notification, user_email: nil)
    expect(notification).not_to be_valid
  end
end
