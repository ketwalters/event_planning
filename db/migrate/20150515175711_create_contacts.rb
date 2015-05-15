class CreateContacts < ActiveRecord::Migration
  def change
  	create_table :contacts do |t|
  		t.string :first
  		t.string :last
  		t.text :street
  		t.string :city
  		t.string :state
  		t.integer :zip
  		t.string :email
  		t.integer :phone
  		t.timestamps
  	end
  end
end
