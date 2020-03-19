require 'rails_helper'

RSpec.feature "User submit a link" do
  context 'create new news' do
    before(:each) do
      visit '/news/new'
      within("form") do
        fill_in 'Title', with: 'test'
        fill_in 'Description', with: 'test'
      end
    end

    scenario "should be successful" do
      within("form") do
        fill_in 'Title', with: 'test'
        fill_in 'Description', with: 'test'
      end
      click_button 'Create News'
      expect(page).to have_content 'News was successfully created.'
    end

    scenario "should fail" do
      within("form") do
        fill_in 'Title', with: ''
        fill_in 'Description',with:'Test'
      end
      click_button 'Create News'
      expect(page).to have_content 'Title can\'t be blank'
    end
  end
end
