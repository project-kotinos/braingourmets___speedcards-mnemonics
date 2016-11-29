# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET #index' do
    it 'is successful' do
      get :index

      assert_response :success
    end
  end
end
