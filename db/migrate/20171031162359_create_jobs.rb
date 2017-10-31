class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.integer :boat_id
      t.string :status
      t.integer :load_amount
      t.integer :sender_id
      t.integer :buyer_id
      t.integer :cost
      t.string :origin
      t.string :destination

      t.timestamps
    end
  end
end
