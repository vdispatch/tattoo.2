class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.references :artist, index: true
      t.string :title
      t.date :complete_date
      t.text :description
      t.string :time_taken
      t.string :image
      t.references :project, index: true

      t.timestamps
    end
  end
end
