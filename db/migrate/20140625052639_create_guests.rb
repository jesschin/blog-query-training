class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.references :comment, index: true

      t.timestamps
    end
  end
end
