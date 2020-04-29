feature 'Enter names' do 
  scenario 'submitting names' do 
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    fill_in :player_2_name, with: 'Ellis'
    click_button 'Submit'
    expect(page).to have_content 'Dave vs. Ellis'
  end
end

feature 'Hit Points' do 
  scenario 'view hit points' do 
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    fill_in :player_2_name, with: 'Ellis'
    click_button 'Submit'
    expect(page).to have_content 'Ellis - Hit Points: 0'
  end
end
