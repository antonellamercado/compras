class Purchase < ActiveRecord::Base
  belongs_to :provider
  has_many :plines
end
