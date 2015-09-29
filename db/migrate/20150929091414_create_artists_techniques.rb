class CreateArtistsTechniques < ActiveRecord::Migration
  def change
    create_table :artists_techniques do |t|
      t.belongs_to :artist, index: true
      t.belongs_to :technique, index: true
    end
  end
end
