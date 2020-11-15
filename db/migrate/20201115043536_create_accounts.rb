class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.bigint :account_number, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :mobile, null: false
      t.string :address, null: false
      t.integer :postcode, null: false
      t.string :suburb, null: false
      t.string :social_media
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
