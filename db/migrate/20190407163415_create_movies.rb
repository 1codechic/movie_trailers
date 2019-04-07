class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :duration
      t.string :trailer_url

      t.timestamps
    end
  end
end
