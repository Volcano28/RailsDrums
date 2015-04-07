class CreateFloortomtoms < ActiveRecord::Migration
  def change
    create_table :floortomtoms do |t|
      t.string :name
      t.string :imageURL
      t.string :brand
      t.string :description
      t.string :usedby

      t.timestamps
    end
  end
end
