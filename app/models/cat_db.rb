class CatDb < ActiveRecord::Base
	validates :name, presence: true
	has_attached_file :picture , styles: {thumb: "150x150#"}
	do_not_validate_attachment_file_type :picture

end
