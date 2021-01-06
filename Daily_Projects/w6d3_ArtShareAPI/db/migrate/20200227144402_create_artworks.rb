class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
        t.string :title, null: false
        t.integer :artist_id, null: false
        t.string :image_url, null: false
    end

    add_index :artworks, :image_url
    add_index :artworks, [ :artist_id, :image_url ], unique: true
  end
end
