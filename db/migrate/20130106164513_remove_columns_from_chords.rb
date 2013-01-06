class RemoveColumnsFromChords < ActiveRecord::Migration
  def up
    remove_column :chords, :bass
    remove_column :chords, :open
    remove_column :chords, :fingering
    remove_column :chords, :frets
    remove_column :chords, :subname
    rename_column :chords, :name, :root_note
  end
end
