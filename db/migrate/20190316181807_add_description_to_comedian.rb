class AddDescriptionToComedian < ActiveRecord::Migration[5.1]
  def change
    remove_column :comedians, :image
    add_column :comedians, :image, :string, default: "https://upload.wikimedia.org/wikipedia/commons/7/72/Default-welcomer.png"
    add_column :comedians, :description, :text
  end
end
