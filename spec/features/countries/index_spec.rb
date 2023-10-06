require "rails_helper"

RSpec.describe "countries index page", type: :feature do
	it "can see all countries name, alliance, strength and active status" do
		country_1 = Country.create(name: "USA",
															alliance: "UN",
														  strength: 40,
														  active_in_war: true)

		country_2 = Country.create(name: "Canada",
															alliance: "UN",
															strength: 30,
															active_in_war: true)

		visit "/countries"

		expect(page).to have_content(country_1.name)
		expect(page).to have_content(country_1.alliance)
		expect(page).to have_content(country_1.strength)
		expect(page).to have_content(country_1.active_in_war)
		expect(page).to have_content(country_2.name)
		expect(page).to have_content(country_2.alliance)
		expect(page).to have_content(country_2.strength)
		expect(page).to have_content(country_2.active_in_war)

	end
end