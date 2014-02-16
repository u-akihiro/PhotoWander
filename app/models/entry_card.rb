class EntryCard < ActiveRecord::Base
  belongs_to :rally
  has_many :stamps 
  
  def checkpoints
    # スタンプ済みのデータを格納する。
    my_stamps = []
    stamps.each do |stamp|
      my_stamps << stamp
    end
    # checkpointの格納先
    _checkpoints = []
    rally.checkpoints.each do |checkpoint|
      class << checkpoint
        # checkpointの特異メソッド
        attr_accessor :stamp
      end
      
      # checkpointに自分のスタンプが押されているか否か
      unless my_stamp = my_stamps.select{|item| item.checkpoint_id == checkpoint.id}.blank?
        checkpoint.stamp = my_stamp
      else
        checkpoint.stamp = my_stamp
      end
      
      _checkpoints << checkpoint
    end
    
    _checkpoints
  end
end
