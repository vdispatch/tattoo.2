class CreateArtistBadges < ActiveRecord::Migration
  def change
    create_table :artist_badges do |t|
      t.string :name
      t.text :description
      t.string :badge_image
      t.references :artist, index: true

      t.timestamps
    end
  end
end
