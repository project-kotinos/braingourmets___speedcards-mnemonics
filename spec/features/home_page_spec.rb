require 'spec_helper'

feature 'the home page' do
  scenario 'has "Speed-cards mnemonics" as HTML title' do
    visit '/'
    expect(page).to have_title('Speed-cards mnemonics')
  end
end
