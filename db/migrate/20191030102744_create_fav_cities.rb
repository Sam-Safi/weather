class CreateFavCities < ActiveRecord::Migration[6.0]
  def change
    create_table :fav_cities do |t|
      t.string :name
      t.string :city
      t.integer :user_id
      t.belongs_to :user
      t.belongs_to :city
      t.timestamps
    end
  end
end
