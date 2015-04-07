class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.string :name
      t.string :imageURL
      t.string :brand
      t.string :description
      t.string :usedby

      t.timestamps
    end
  end
end
