class ReviewColumnInReviews < ActiveRecord::Migration
  def change
    rename_column :reviews, :body, :gif_response
  end
end
