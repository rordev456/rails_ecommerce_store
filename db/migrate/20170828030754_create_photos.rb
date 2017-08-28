class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.references :product, foreign_key: true
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
