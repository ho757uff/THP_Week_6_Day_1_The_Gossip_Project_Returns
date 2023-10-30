class AddDetailsToGossips < ActiveRecord::Migration[7.1]
  def change
    add_column :gossips, :prenom, :string
    add_column :gossips, :lieu, :string
  end
end
