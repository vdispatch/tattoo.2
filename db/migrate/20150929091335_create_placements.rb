class CreatePlacements < ActiveRecord::Migration
  def change
    create_table :placements do |t|
      t.string :body_part
      t.references :project, index: true

      t.timestamps
    end
  end
end
