class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :business_name
      t.integer :abn
      t.integer :phone
      t.string :website
      t.belongs_to :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
