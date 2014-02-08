class Rally < ActiveRecord::Base
  has_many :checkpoints
  has_many :entry_cards
end
