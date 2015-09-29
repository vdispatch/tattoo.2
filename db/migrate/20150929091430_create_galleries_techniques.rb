class CreateGalleriesTechniques < ActiveRecord::Migration
  def change
    create_table :galleries_techniques do |t|
      t.belongs_to :gallery, index: true
      t.belongs_to :technique, index: true
    end
  end
end
