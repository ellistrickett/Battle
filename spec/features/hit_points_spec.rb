feature 'Hit Points' do
  scenario 'view hit points' do
    sign_in_and_play
    expect(page).to have_content 'Ellis - 0HP'
  end
end
