class Course < ApplicationRecord
  has_rich_text :description
  validates :title, presence: true
  
  validate :check_description_length_and_presence

  

  private 

  def check_description_length_and_presence
    if description.to_s.length < 5
      binding.pry
      errors.add(:description, "must be greater than 5 characters")
    elsif !description.present? 
      errors.add(:description, "must have a description")
    end
  end
end
