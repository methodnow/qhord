class CreateVoicings < ActiveRecord::Migration
  def change
    create_table :voicings do |t|
      t.text :fingering
      t.text :meta
      t.string :bass
      t.string :open
      t.integer :frets
      t.integer :fretposition
      t.string :formula
      t.integer :chord_id

      t.timestamps
    end
  end
end
