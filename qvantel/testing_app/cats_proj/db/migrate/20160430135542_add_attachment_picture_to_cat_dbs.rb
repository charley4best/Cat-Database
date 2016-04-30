class AddAttachmentPictureToCatDbs < ActiveRecord::Migration
  def self.up
    change_table :cat_dbs do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :cat_dbs, :picture
  end
end
