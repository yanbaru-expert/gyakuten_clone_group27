class CreateWatchedMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :watched_movies do |t|

      t.timestamps
    end
  end
end
