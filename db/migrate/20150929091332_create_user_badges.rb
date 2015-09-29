class CreateUserBadges < ActiveRecord::Migration
  def change
    create_table :user_badges do |t|
      t.string :name
      t.text :description
      t.string :badge_image

      t.timestamps
    end
  end
end
