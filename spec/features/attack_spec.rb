feature 'attack' do
  scenario 'attacking p2 reduces p2s hp by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'Continue'
    expect(page).to have_content 'Mittens: 90 HP'
  end
end
