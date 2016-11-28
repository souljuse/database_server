require 'spec_helper'

context 'key-value passed in' do
  scenario 'If key value are passed in the url the page should return that pair' do
    visit '/set?ciao=4'
    expect(page).to have_content('ciao = 4')
  end
end
