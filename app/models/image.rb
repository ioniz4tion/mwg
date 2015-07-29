class Image < ActiveRecord::Base
	default_scope{ order('id ASC')}
	has_attached_file :image, :styles => { :large => "100%", :thumb => "400x300!" }, :default_url => "http://placehold.it/500x500"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
