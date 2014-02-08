class User < ActiveRecord::Base
  has_many :entry_cards
end
