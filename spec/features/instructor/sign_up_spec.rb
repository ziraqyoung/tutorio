require 'rails_helper'

RSpec.feature 'Sign up', type: :feature do
  let(:instructor) { build(:instructor) }

  scenario 'instructor navigates to sign up page and successfully sign up' do
    instructor
    visit root_path
    find('.parallax a', text: 'Are you a teacher?').click
    fill_in 'instructor[full_name]', with: instructor.full_name
    fill_in 'instructor[email]', with: instructor.email
    fill_in 'instructor[password]', with: instructor.password
    fill_in 'instructor[password_confirmation]', with: instructor.password_confirmation
    find(".new_instructor input[type=submit]").click
    expect(page).to have_selector '#instructor-settings'
  end
end
