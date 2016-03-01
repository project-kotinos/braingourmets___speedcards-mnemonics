# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'the home page', type: :feature do
  before { @path = '/' }

  feature 'The page' do
    before { visit @path }

    scenario 'has "Speed-cards mnemonics" as HTML title' do
      expect(page).to have_title('Speed-cards mnemonics')
    end
  end
end
