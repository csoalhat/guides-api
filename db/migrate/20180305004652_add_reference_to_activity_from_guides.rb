class AddReferenceToActivityFromGuides < ActiveRecord::Migration[5.1]
  def change
    add_reference :guides, :activity, index: true, foreign_key: :true
    remove_reference :guides, :user, index: true
  end
end
