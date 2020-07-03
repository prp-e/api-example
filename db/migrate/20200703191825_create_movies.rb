class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :genre
      t.integer :year
      t.boolean :is_watched
      t.boolean :watchlisted
      t.float :imdb_score
      t.integer :rotten_tomatoes

      t.timestamps
    end
  end
end
