class RenameChordTypeInChords < ActiveRecord::Migration
  def change
    rename_column :chords, :chord_type, :chord_quality
    add_column :chords, :chord_name, :string
    add_column :chords, :component_notes, :text
    add_column :chords, :symbol, :string
  end
end
