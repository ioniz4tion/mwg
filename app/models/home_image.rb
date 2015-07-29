class HomeImage < ActiveRecord::Base
	default_scope{ order('id ASC')}
	has_attached_file :image, :default_url => "http://placehold.it/500x500"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
