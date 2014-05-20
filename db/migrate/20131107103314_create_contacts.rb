class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :company
      t.string :address
      t.string :city
      t.string :county
      t.string :state
      t.string :zip
      t.string :phone
      t.string :fax
      t.string :web
      t.integer :followers, :default => 0
      t.string :name
      t.string :note

      t.timestamps
    end
  end
end