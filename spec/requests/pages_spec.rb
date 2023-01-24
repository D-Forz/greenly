require 'rails_helper'

RSpec.describe 'PagesController', type: :request do
  describe 'GET /' do
    it 'returns http success and have the correct content' do
      get root_path

      expect(response.body).to include('Greenly')
      expect(response).to have_http_status(:success)
    end
  end
end
