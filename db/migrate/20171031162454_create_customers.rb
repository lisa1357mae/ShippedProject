class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.string :address
      t.string :email
      t.string :contact

      t.timestamps
    end
  end
end
