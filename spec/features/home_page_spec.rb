# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'the home page', type: :feature do
  let(:path) { '/' }

  describe 'The page' do
    before { visit path }

    it 'has "Speed-cards mnemonics" as HTML title' do
      expect(page).to have_title('Speed-cards mnemonics')
    end
  end
end
