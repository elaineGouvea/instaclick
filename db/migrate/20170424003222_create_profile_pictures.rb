class CreateProfilePictures < ActiveRecord::Migration
  def change
    create_table :profile_pictures do |t|
      t.string :cloudnary_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
