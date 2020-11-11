feature 'Attacking' do 
  scenario 'Player wins a game' do 
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content "Dave attacks Mittens" 
  end
end

