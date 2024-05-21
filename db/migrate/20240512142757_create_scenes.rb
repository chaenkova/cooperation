class CreateScenes < ActiveRecord::Migration[6.1]
  def change
    create_table :scenes do |t|
      t.text :sound
      t.text :mode
      t.belongs_to :background
      t.belongs_to :character
      t.boolean :auto_next, default: false

      t.timestamps
    end
  end
end
