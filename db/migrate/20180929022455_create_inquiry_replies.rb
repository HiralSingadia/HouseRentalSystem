class CreateInquiryReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiry_replies do |t|
      t.text :reply
      t.belongs_to :user, foreign_key: true
      t.belongs_to :inquiry_detail, foreign_key: true

      t.timestamps
    end
  end
end
