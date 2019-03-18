class CreateSpecial < ActiveRecord::Migration[5.1]
  def change
    create_table :specials do |t|
      t.string :name
      t.integer :length
      t.string :image
      t.references :comedian
    end
  end
end
