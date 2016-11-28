require 'spec_helper'

context 'key-value passed in' do
  scenario 'If key value are passed in the url the page should return that pair' do
    visit '/set?ciao=4'
    visit '/get?key=ciao'
    expect(page).to have_content('ciao = 4')
  end

  scenario 'If multiple key values are passed in the url the page should return those pair' do
    visit '/set?man=5'
    visit '/set?devil=6'
    visit '/get?key=devil'
    expect(page).not_to have_content('man = 5')
    visit '/'
    expect(page).to have_content('man = 5')
    expect(page).to have_content('devil = 6')
  end

  scenario 'If multiple key/value pairs are passed in the same url the page should return all those pair' do
    visit '/set?man=5&devil=6'
    visit '/get?key=man'
    expect(page).to have_content('man = 5')
    visit '/get?key=devil'
    expect(page).to have_content('devil = 6')
  end
end
