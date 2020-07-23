# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class MyValidator < ActiveModel::Validator
  def validate(record)
    unless record.title.present?
      record.errors[:title] << 'title cannot be left empty'
    end
  end
end

class Article < ApplicationRecord
  belongs_to :user
	has_many :comments, dependent: :destroy
  include ActiveModel::Validations
  validates_with MyValidator
  validates :text, presence: true
  before_validation :normalize_name, on: :create
  
  private
    def normalize_name
      self.title = title.downcase.titleize
      puts self.title
    end
end
