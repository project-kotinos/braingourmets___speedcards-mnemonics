require 'rails_helper'

RSpec.feature 'the home page', type: :feature do
  scenario 'has "Speed-cards mnemonics" as HTML title' do
    visit '/'
    expect(page).to have_title('Speed-cards mnemonics')
  end
end
