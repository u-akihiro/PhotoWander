class Stamp < ActiveRecord::Base
  belongs_to :checkpoint
  belongs_to :entry_card
end
