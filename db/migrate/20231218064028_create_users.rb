class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email, null: false # null: false means that the email column cannot be empty
      t.string :password_digest

      t.timestamps
    end
  end
end
