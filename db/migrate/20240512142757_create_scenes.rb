class CreateScenes < ActiveRecord::Migration[6.1]
  def change
    create_table :scenes do |t|
      t.text :sound
      t.text :mode
      t.belongs_to :background
      t.belongs_to :character
      t.references :prev_scene, foreign_key: { to_table: :scenes }
      t.references :next_scene, foreign_key: { to_table: :scenes }

      t.timestamps
    end
  end
end
