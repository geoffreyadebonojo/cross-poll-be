class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.string :favorite_id

      t.timestamps
    end
  end
end
