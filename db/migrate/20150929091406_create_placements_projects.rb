class CreatePlacementsProjects < ActiveRecord::Migration
  def change
    create_table :placements_projects do |t|
      t.belongs_to :placement, index: true
      t.belongs_to :project, index: true
    end
  end
end
