class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :description
      t.string :slug

      t.timestamps
    end
    add_index :activities, :slug, unique: true
  end
end
