# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HomeController, type: :request do
  describe 'GET #index' do
    it 'is successful' do
      get home_index_url

      assert_response :success
    end
  end
end
