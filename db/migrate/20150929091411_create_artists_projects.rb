class CreateArtistsProjects < ActiveRecord::Migration
  def change
    create_table :artists_projects do |t|
      t.belongs_to :artist, index: true
      t.belongs_to :project, index: true
    end
  end
end
