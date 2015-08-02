class Pline < ActiveRecord::Base
  belongs_to :purchase
  has_one :book
end
