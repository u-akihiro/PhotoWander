class EntryCard < ActiveRecord::Base
  belongs_to :rally
  has_many :stamps 
end
