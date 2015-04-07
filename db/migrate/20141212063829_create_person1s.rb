class CreatePerson1s < ActiveRecord::Migration
  def change
    create_table :person1s do |t|
      t.string :snaredrum_carts
      t.string :bassdrum_carts
      t.string :hightomtom_carts
      t.string :floortomtom_carts
      t.string :hihat_carts

      t.timestamps
    end
  end
end
