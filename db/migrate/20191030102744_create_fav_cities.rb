class CreateFavCities < ActiveRecord::Migration[6.0]
  def change
    create_table :fav_cities do |t|
      t.string :city_name
      t.integer :user_id

      t.timestamps
    end
  end
end
