class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.text :address
      t.string :city
      t.integer :phone
      t.string :email
      t.string :state
      t.integer :zip
      t.string :residence
      t.integer :price
      t.string :how_did_you_hear
      t.string :imp_feature
      t.string :represented_by_broaker
      t.string :broaker
      t.text :comment

      t.timestamps
    end
  end
end
