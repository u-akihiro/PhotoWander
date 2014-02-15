class Stamp < ActiveRecord::Base
  belongs_to :checkpoint
  belongs_to :entry_card
  
  attr_accessor :pic
  before_create :store_file
  before_destroy :destroy_file
  
  private
    def store_file
      #ファイル名の取得
      self.file_name = Time.now.to_i.to_s + '_' + Digest::MD5.hexdigest(self.pic.original_filename) + '.jpg'
      File.open(full_path, 'wb') do |f|
        f.write self.pic.read
      end
    end
    
    def destroy_file
      begin
        File.unlink full_path
      rescue
        nil
      end
    end
    
    def full_path
      return Rails.root.join('public/pictures/').to_s + self.file_name
    end
end
