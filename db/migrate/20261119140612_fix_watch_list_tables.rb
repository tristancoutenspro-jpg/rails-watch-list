class FixWatchListTables < ActiveRecord::Migration[8.1]
  def change
    add_column :movies, :title, :string
    add_column :movies, :overview, :text
    add_column :movies, :poster_url, :string
    add_column :movies, :rating, :float

    add_reference :bookmarks, :movie, foreign_key: true
    add_reference :bookmarks, :list, foreign_key: true

    add_column :bookmarks, :comment, :text
  end
end
