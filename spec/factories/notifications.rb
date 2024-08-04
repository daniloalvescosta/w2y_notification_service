FactoryBot.define do
  factory :notification do
    task_uuid { SecureRandom.uuid }
    user_email { "user@example.com" }
    status { "pending" }
  end
end
