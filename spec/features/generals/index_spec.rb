require "rails_helper"

RSpec.describe "generals index page", type: :feature do
	it "can see all generals name, victories, defeats, alive_status & country" do
		country_1 = Country.create(name: "USA",
															alliance: "UN",
														  strength: 40,
														  active_in_war: true,
														  id: 1)

		country_2 = Country.create(name: "Canada",
															alliance: "UN",
															strength: 30,
															active_in_war: true,
														  id: 2)

		general_1 = General.create(name: "Tom Bombadil",
															victories: 1,
														  defeats: 0,
														  alive: true,
														  country_id: 1)

		general_2 = General.create(name: "Bobby Stabs",
															victories: 3,
															defeats: 1,
															alive: true,
															country_id: 2)

		visit "/generals"

		expect(page).to have_content(general_1.name)
		expect(page).to have_content(general_1.victories)
		expect(page).to have_content(general_1.defeats)
		expect(page).to have_content(general_1.alive)
		expect(page).to have_content(country_1.name)

		expect(page).to have_content(general_2.name)
		expect(page).to have_content(general_2.victories)
		expect(page).to have_content(general_2.defeats)
		expect(page).to have_content(general_2.alive)
		expect(page).to have_content(country_2.name)
	end
end