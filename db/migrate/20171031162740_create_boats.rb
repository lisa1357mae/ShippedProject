class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.string :name
      t.integer :size
      t.integer :max_load
      t.string :image_url
      t.integer :assign_jobs
t.references :company
      t.timestamps
    end
  end
end
