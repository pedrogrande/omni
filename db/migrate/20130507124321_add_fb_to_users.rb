class AddFbToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :nickname, :string
  	add_column :users, :image, :string
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :location, :string
  	add_column :users, :gender, :string
  	add_column :users, :link, :string
  end
end
