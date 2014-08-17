class ChangeCarouselsToGalleries < ActiveRecord::Migration
  def change
    rename_table :carousels, :galleries
  end
end
