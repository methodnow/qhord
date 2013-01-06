class CreateChords < ActiveRecord::Migration
  def change
    create_table :chords do |t|
      t.string :name
      t.string :subname
      t.string :alt
      t.string :bass
      t.string :open
      t.text :fingering
      t.integer :chordtype_id

      t.timestamps
    end
  end
end
