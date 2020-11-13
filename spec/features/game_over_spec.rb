
feature 'game over' do
  scenario 'calls game over when you have no health' do
    sign_in_and_play
    19.times {
      click_link "Attack"
      click_link "Continue"
    }
    expect(page).to have_content "Dave won!"
  end
end
