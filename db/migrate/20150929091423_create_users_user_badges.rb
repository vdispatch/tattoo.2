class CreateUsersUserBadges < ActiveRecord::Migration
  def change
    create_table :users_user_badges do |t|
      t.belongs_to :user, index: true
      t.belongs_to :user_badges, index: true
    end
  end
end
