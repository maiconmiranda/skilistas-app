class CreateRecommendations < ActiveRecord::Migration[6.0]
  def change
    create_table :recommendations do |t|
      t.boolean :recommended
      t.float :score
      t.belongs_to :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
