class CreateCountry < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :alliance
      t.integer :strength
      t.boolean :active_in_war

      t.timestamps
    end
  end
end
