class CreateStudios < ActiveRecord::Migration
  def change
    create_table :studios do |t|
      t.string :name
      t.string :address
      t.string :town
      t.string :county
      t.string :postcode
      t.string :country
      t.string :website
      t.string :email
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :googleplus
      t.string :googlebusiness

      t.timestamps
    end
  end
end
