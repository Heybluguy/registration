require 'rails_helper'

describe 'as a user' do
  describe 'when i visit show page' do
    scenario 'i see the name of individual student' do
      student = Student.create(name: "Bob")

      visit "/students/#{student.id}"

      expect(page).to have_content("Bob")
    end
  end
end