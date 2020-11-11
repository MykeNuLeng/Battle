feature 'enter their names' do
  scenario 'entering name1 and name2' do
    sign_in_and_play
    expect(page).to have_content 'Dave'
  end

  scenario 'entering name1 and name2' do
    sign_in_and_play
    expect(page).to have_content 'Mittens'
  end
end
