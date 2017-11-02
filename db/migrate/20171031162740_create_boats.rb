class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.string :name , uniqueness: true
      t.string :size
      t.integer :max_load
      t.attachment :photo
      t.integer :assign_jobs
t.references :company
      t.timestamps
    end
  end
end
  