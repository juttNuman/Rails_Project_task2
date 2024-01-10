class Book < ApplicationRecord
  belongs_to :arthur
  validates :title, uniqueness:true


end
