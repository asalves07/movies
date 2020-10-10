class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.boolean :adult
      t.string :backdrop_path
      t.string :homepage
      t.string :imdb
      t.string :original_language
      t.string :original_title
      t.string :overview
      t.decimal :popularity
      t.string :poster_path
      t.integer :runtime
      t.string :status
      t.string :title
      t.decimal :vote_average
      t.integer :vote_count
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
