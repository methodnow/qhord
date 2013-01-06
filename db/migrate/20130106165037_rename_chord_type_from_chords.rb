class RenameChordTypeFromChords < ActiveRecord::Migration
  def change
    rename_column :chords, :chordtype_id, :chord_type
    change_column :chords, :chord_type, :string
  end
end
