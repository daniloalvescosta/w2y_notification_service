require 'rails_helper'

RSpec.describe NotificationsController, type: :controller do
  describe 'POST #create' do
    let(:valid_attributes) do
      {
        notification: {
          task_uuid: SecureRandom.uuid,
          user_email: 'user@example.com',
          status: 'pending'
        }
      }
    end

    let(:invalid_attributes) do
      {
        notification: {
          task_uuid: nil,
          user_email: nil,
          status: nil
        }
      }
    end

    context 'with valid parameters' do
      it 'creates a new Notification' do
        expect {
          post :create, params: valid_attributes
        }.to change(Notification, :count).by(1)
      end

      it 'renders a JSON response with the new notification' do
        post :create, params: valid_attributes
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json; charset=utf-8')
        expect(JSON.parse(response.body)['message']).to eq('Notification created successfully')
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Notification' do
        expect {
          post :create, params: invalid_attributes
        }.to change(Notification, :count).by(0)
      end

      it 'renders a JSON response with errors for the new notification' do
        post :create, params: invalid_attributes
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json; charset=utf-8')
        expect(JSON.parse(response.body)['errors']).not_to be_empty
      end
    end
  end
end
