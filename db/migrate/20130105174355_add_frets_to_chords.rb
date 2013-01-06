class AddFretsToChords < ActiveRecord::Migration
  def change
    add_column :chords, :frets, :integer
  end
end
