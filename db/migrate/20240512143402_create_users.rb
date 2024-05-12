class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :current_screen_id
      t.text :login
      t.text :password

      t.timestamps
    end
  end
end
