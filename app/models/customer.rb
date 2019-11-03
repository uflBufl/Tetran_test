class Customer < ApplicationRecord
  validates :name, length: {maximum: 50}

  validates :phone, length: {maximum: 255}

  validates :description, length: {maximum: 255}
end
