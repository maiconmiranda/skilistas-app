class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :title
      t.text :description
      t.string :locations
      t.string :image_id
      t.belongs_to :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
