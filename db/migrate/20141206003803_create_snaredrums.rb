class CreateSnaredrums < ActiveRecord::Migration
  def change
    create_table :snaredrums do |t|
      t.string :name
      t.string :imageURL
      t.string :brand
      t.string :description
      t.string :usedby

      t.timestamps
    end
  end
end
