class CreateGalleriesProjects < ActiveRecord::Migration
  def change
    create_table :galleries_projects do |t|
      t.belongs_to :gallery, index: true
      t.belongs_to :project, index: true
    end
  end
end
