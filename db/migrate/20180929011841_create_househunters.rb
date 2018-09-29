class CreateHousehunters < ActiveRecord::Migration[5.2]
  def change
    create_table :househunters do |t|
      t.string :phone
      t.string :preferred_contact
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
