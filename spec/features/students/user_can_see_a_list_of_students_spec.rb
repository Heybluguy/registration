require 'rails_helper'

describe 'as a a user' do
  describe 'when i visit the studentd directory' do
    scenario 'i see a list of students' do
      student_1 = Student.create(name: "Bob")
      student_2 = Student.create(name: "Luis")

      visit students_path

      expect(page).to have_content("Luis")
      expect(page).to have_content("Bob")
    end
  end
end