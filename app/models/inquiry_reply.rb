class InquiryReply < ApplicationRecord
  belongs_to :user
  belongs_to :inquiry_detail
end
