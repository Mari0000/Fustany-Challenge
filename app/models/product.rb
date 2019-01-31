class Product < ApplicationRecord
  belongs_to :category
  scope :favourite_list, -> { where(favourite: true) }

  def change_status(status)
    self.favourite = status
  end
end
