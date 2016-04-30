class CatDb < ActiveRecord::Base
	validates :name, presence: true
	has_attached_file :picture , styles: {thumb: "150x150#"}
end
