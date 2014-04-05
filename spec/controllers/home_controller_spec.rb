require 'spec_helper'

describe HomeController do
  describe 'GET #index' do
    it 'gets home/index with application layout' do
      get :index

      assert_response :success
      expect(response).to render_template 'home/index'
      expect(response).to render_template layout: 'layouts/application'
    end
  end
end
