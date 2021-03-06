class Question < ApplicationRecord
  validates_presence_of :content
  validates_presence_of :option1
  validates_presence_of :option2
  validates_presence_of :option3
  validates_presence_of :option4
  validates_presence_of :answer
  mount_uploader :image, ImageUploader
 
  private
    def image_size_validation
      errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
    end
  end