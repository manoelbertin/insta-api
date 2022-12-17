class CreateTokens < ActiveRecord::Migration[7.0]
  def change
    create_table :tokens do |t|
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
