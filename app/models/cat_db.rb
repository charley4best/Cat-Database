class CatDb < ActiveRecord::Base
	validates :name, presence: true
	has_attached_file :picture , styles: {thumb: "150x150#"}
	validates_attachment_content_type :file_name, :content_type => %w(image/jpeg image/jpg image/png)

end
