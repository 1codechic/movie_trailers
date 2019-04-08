class ChangeTrailerUrlInMovies < ActiveRecord::Migration[5.2]
  def change
    rename_column :movies, :trailer_url, :photo
  end
end
