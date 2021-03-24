# frozen_string_literal: true

require 'rails_helper'
require 'date'

RSpec.describe 'Api V1 Diary', type: 'request' do
  describe 'POST /api/v1/diaries' do
    context 'with valid parameters' do
      let(:valid_params) do
        {
          diary: {
            title: 'Some some some oms eomesom',
            expiration: Time.now.in_time_zone + 600,
            kind: 1
          }
        }
      end

      it 'creates a new diary' do
        # expected `Diary.count` to have changed by 1, but was changed by 0
        expect { post '/api/v1/diaries', params: valid_params }.to change { Diary.count }.by(1)

        expect(response).to have_http_status :created
        expect(response.headers['Location']).to eq api_v1_diary_url(Diary.last)
      end

      it 'creates a diary with the correct attributes' do
        post '/api/v1/diaries', params: valid_params
        expect(Diary.last).to have_attributes valid_params[:diary]
      end
    end
  end
end
