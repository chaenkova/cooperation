class CreateChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :choices do |t|
      t.text :text_choice
      t.references :scene, foreign_key: { to_table: :scenes }
      t.references :next_scene, foreign_key: { to_table: :scenes }

      t.timestamps
    end
  end
end
