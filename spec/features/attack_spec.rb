feature 'attack' do
  before do
    sign_in_and_play
    click_link 'Attack'
    click_link 'Continue'
  end
  scenario 'attacking p2 reduces p2s hp by 10' do
    expect(page).to have_content 'Mittens: 90 HP'
  end

  scenario 'attacking alternates' do
    click_link 'Attack'
    click_link 'Continue'
    expect(page).to have_content 'Dave: 90 HP'
    expect(page).to have_content 'Mittens: 90 HP'
  end
end
