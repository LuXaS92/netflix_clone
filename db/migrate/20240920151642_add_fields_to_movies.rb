class AddFieldsToMovies < ActiveRecord::Migration[7.2]
  def change
    add_column :movies, :image_url, :string
    add_column :movies, :video_url, :string
  end
end
