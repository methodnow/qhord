class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :name
      t.string :alt_name
      t.integer :scale_weight

      t.timestamps
    end
  end
end
