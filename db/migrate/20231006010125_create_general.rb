class CreateGeneral < ActiveRecord::Migration[7.0]
  def change
    create_table :generals do |t|
			t.string :name
      t.integer :victories
      t.integer :defeats
      t.boolean :alive

      t.timestamps
    end
  end
end
