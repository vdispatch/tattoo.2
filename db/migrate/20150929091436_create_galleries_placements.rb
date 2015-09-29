class CreateGalleriesPlacements < ActiveRecord::Migration
  def change
    create_table :galleries_placements do |t|
      t.belongs_to :gallery, index: true
      t.belongs_to :placement, index: true
    end
  end
end
