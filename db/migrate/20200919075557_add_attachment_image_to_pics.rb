class AddAttachmentImageToPics < ActiveRecord::Migration[6.0]
  def self.up
    change_table :pictures do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :pics, :image
  end
end
