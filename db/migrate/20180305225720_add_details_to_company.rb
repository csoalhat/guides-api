class AddDetailsToCompany < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :address, :text
    add_column :companies, :phone_number, :float
    add_column :companies, :description, :string
    add_column :companies, :default_currency, :string
  end
end
