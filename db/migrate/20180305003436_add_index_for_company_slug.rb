class AddIndexForCompanySlug < ActiveRecord::Migration[5.1]
  def change
    add_index :companies, :slug, unique: true
  end
end
