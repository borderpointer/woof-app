class AddColumnToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :text_response, :string
  end
end
