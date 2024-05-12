class CreateBackgrounds < ActiveRecord::Migration[6.1]
  def change
    create_table :backgrounds do |t|
      t.text :image
      t.text :sound

      t.timestamps
    end
  end
end
