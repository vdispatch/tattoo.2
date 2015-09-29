class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.references :studio, index: true
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :googleplus
      t.text :bio

      t.timestamps
    end
  end
end
