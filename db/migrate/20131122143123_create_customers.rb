class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :phone_number
      t.string :email_address
      t.string :image
      t.string :notes
      t.integer :province_id

      t.timestamps
    end
  end
end
