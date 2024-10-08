class CreateMovies < ActiveRecord::Migration[7.2]
  def change
    unless table_exists?(:movies)
      create_table :movies do |t|
        t.string :title
        t.text :description
        t.string :genre
        t.integer :year

        t.timestamps
      end
    end
  end
end
