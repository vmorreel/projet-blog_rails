class AddPublishingDateToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :publishing_date, :date
  end
end
