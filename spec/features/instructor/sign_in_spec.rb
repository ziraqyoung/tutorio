require 'rails_helper'

RSpec.feature 'Sign up', type: :feature do
  let(:instructor) { create(:instructor) }

  scenario 'instructor navigates to login page from landing page and login successfully' do
    visit root_path
    find('.parallax a', text: 'Are you a teacher?').click
    within "form#new_instructor" do
      fill_in 'instructor[email]', with: instructor.email
      fill_in 'instructor[password]', with: instructor.password
      find(".actions input[type=submit]").click
    end
    find('#instructor-toggle').click
    expect(page).to have_content instructor.full_name
  end
end
