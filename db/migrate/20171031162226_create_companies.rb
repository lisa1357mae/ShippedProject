class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :username
      t.string :firstname
      t.string :lastname
      # t.string :password

      t.timestamps
    end
  end
end
