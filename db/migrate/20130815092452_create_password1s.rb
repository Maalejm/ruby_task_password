class CreatePassword1s < ActiveRecord::Migration
  def change
    create_table :password1s do |t|
      t.string :salt
      t.string :encrypted_password

      t.timestamps
    end
  end
end
