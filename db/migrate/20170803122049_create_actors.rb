class CreateActors < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |t|
      t.string :name
      t.integer :TMDB_id

      t.timestamps
    end
    add_index :actors, :TMDB_id, unique: true
  end
end
