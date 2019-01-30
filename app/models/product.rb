class Product < ApplicationRecord
  belongs_to :category

  def change_status 
    self.favourite = true
  end 
end
