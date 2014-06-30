class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.references :post, index: true
      t.string :name
      t.string :email
      t.references :continent, index: true
      t.references :country, index: true

      t.timestamps
    end
  end
end
