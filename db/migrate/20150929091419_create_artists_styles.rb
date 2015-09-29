class CreateArtistsStyles < ActiveRecord::Migration
  def change
    create_table :artists_styles do |t|
      t.belongs_to :artist, index: true
      t.belongs_to :style, index: true
    end
  end
end
