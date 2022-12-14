class ExpendableItem < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :amount_of_product, presence:true
  validates :amount_to_use, presence: true
  validates :frequency_of_use, presence: true
  enum auto_buy: {"する": true, "しない": false}
  validates :auto_buy, inclusion: {in: ["する", "しない"]}

  has_one_attached :image
end
