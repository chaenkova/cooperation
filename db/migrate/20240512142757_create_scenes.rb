class CreateScenes < ActiveRecord::Migration[6.1]
  def change
    create_table :scenes do |t|
      t.text :sound
      t.text :mode

      t.timestamps
    end
  end
end
