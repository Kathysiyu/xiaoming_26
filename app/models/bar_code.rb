class BarCode < ActiveRecord::Base
  belongs_to :user
  has_attached_file :pic, styles: { medium: "500x500>", thumb: "300x300#" }, default_url: 'missing.png'
  validates_attachment_content_type :pic, content_type: ["image/jpg", "image/jpeg", "image/png"]
end
