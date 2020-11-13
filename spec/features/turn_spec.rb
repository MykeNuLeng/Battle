feature 'turns' do
  before do
    sign_in_and_play
  end
  scenario 'displays names at top' do
    expect(page).to have_content "Dave's turn!"
  end

  scenario 'swaps names for different turns' do
    click_link "Attack"
    click_link "Continue"
    expect(page).to have_content "Mittens's turn!"
  end
end
