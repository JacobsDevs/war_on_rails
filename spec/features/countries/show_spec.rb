require "rails_helper"

RSpec.describe "countries show page", type: :feature do
	it "can see selected countries name, alliance, strength and active status" do
		country_1 = Country.create(name: "USA",
															alliance: "UN",
														  strength: 40,
														  active_in_war: true,
														  id: 1)

		country_2 = Country.create(name: "Canada",
															alliance: "UN",
															strength: 30,
															active_in_war: false,
															id: 2)

		visit "/countries/1"

		expect(page).to have_content(country_1.name)
		expect(page).to have_content(country_1.alliance)
		expect(page).to have_content(country_1.strength)
		expect(page).to have_content("Status: At War")

		visit "/countries/2"

		expect(page).to have_content(country_2.name)
		expect(page).to have_content(country_2.alliance)
		expect(page).to have_content(country_2.strength)
		expect(page).to have_content("Status: Peace Time")


	end
end