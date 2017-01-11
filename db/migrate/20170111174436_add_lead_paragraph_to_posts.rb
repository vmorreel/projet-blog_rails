class AddLeadParagraphToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :lead_paragraph, :string
  end
end
