class CreateJoke < ActiveRecord::Migration[5.1]
  def change
    create_table :jokes do |t|
      t.string :joke
      t.references :comedian
    end
  end
end
