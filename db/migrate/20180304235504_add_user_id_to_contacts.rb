class AddUserIdToContacts < ActiveRecord::Migration[5.1]
  def change
    add_reference :guides, :user, index: true, foreign_key: true
  end
end