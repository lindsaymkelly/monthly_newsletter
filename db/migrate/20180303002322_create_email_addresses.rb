class CreateEmailAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :email_addresses do |t|
      t.string :email, null: false
      t.references :user, null: false

      t.timestamps(null: false)
    end
  end
end
