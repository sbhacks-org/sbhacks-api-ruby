class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, nil: false
      t.string :email, index: { unique: true }, nil: false
      t.string :password_digest, nil: false

      t.timestamps
    end
  end
end
