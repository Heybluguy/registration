require 'rails_helper'

describe 'as a user' do
  scenario 'i can create a student' do
    visit new_student_path

    fill_in "name",	with: "Bob"
    click_on "Submit"

    expect(page).to have_content("Bob")
    expect(current_path).to eq(students_path)
  end
end