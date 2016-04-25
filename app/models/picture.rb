class Picture < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader

  validates :cohort_id, numericality: { greater_than: 0, less_than: 10 }
  validates :title, presence: true
end
