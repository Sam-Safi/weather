class RenameInfoToCity < ActiveRecord::Migration[6.0]
  def change
    create_table :city do |t|
      t.string :city
      t.string :name
      t.integer :user_id
      t.belongs_to :user
    end
  end
end
