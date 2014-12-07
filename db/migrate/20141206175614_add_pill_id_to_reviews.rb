class AddPillIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :pill_id, :integer
  end
end
