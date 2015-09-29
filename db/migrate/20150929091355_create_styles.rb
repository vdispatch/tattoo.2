class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :type
      t.references :artist, index: true

      t.timestamps
    end
  end
end
