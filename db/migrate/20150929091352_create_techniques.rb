class CreateTechniques < ActiveRecord::Migration
  def change
    create_table :techniques do |t|
      t.string :name
      t.text :description
      t.references :artist, index: true

      t.timestamps
    end
  end
end
