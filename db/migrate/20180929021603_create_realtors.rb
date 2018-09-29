class CreateRealtors < ActiveRecord::Migration[5.2]
  def change
    create_table :realtors do |t|
      t.string :phone
      t.belongs_to :company, foreign_key: true
      t.belongs_to :user, foreign_key: true
      #t.has_many :house

      t.timestamps
    end
  end
end
