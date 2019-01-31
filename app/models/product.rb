class Product < ApplicationRecord
  belongs_to :category
  scope :favourite_list, -> { where(favourite: true) }

  def change_status 
    self.favourite = !self.favourite
  end 
end
