class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :login
      t.text :password
      t.references :current_screen, foreign_key: { to_table: :scenes }, default: 1

      t.timestamps
    end
  end
end
