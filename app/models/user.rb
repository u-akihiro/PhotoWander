class User < ActiveRecord::Base
  # Relation
  has_many :entry_cards
  
  # 必須バリデーション
  validates :name, :mail, :password, presence: true
  
  # メールバリデーション
  validates_email_format_of :mail
  
end
