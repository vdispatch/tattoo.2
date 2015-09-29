class CreateGalleriesStyles < ActiveRecord::Migration
  def change
    create_table :galleries_styles do |t|
      t.belongs_to :gallery, index: true
      t.belongs_to :style, index: true
    end
  end
end
