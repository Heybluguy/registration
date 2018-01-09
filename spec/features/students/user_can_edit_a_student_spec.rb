require 'rails_helper'

describe 'as a user' do
  describe 'when im on index page' do
    scenario 'i can edit a student' do
      student = Student.create(name: "Bob")
      visit students_path

      click_on "Edit"
      fill_in "name",	with: "ben"
      click_on "Update"

      expect(current_path).to eq(student_path(student))
    end
  end
end