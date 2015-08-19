class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :fullpath
      t.string :format
      t.string :caption
      t.float :size
      t.integer :album_id

      t.timestamps null: false
    end
  end
end
